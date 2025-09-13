clear all
set more off

*- set path where ipums data is located
global path "~/IPUMS - Age/"
cd "${path}"

*- process ipums data
*-- see ipumsi_00004.do for variables that need to be requested from IPUMS-International)
do ipumsi_00004.do

*- impute cohort
replace age = round(age)
g birthyear = year - age 

g check = birthyear - birthyr // only for 2005
sum check

*- sex
g men = (sex == 1)
g women = (sex == 2)

*- education
g noedu_men = (edattain == 1) if men == 1
g noedu_women = (edattain == 1) if women == 1

g second_men = (edattain == 3) if men == 1
g second_women = (edattain == 3) if women == 1

g univ_men = (edattain == 4) if men == 1
g univ_women = (edattain == 4) if women == 1

*- labor force participation
g lf_men = (labforce == 2) if men == 1
g lf_women = (labforce == 2) if women == 1

*- unemployment
g unemp_men = (empstat == 2) if men == 1
g unemp_women = (empstat == 2) if women == 1

*- self-employment
g selfemp_men = (classwk == 1) if men == 1
g selfemp_women = (classwk == 1) if women == 1


*- total number of people by birthyear, census year, and metro area
gcollapse (mean) age (sum) men women noedu_* second_* univ_* lf_* unemp_* selfemp_*  [w=perwt], by(year birthyear metroco)

g medellin = (metroco==9)

g pop = men + women

*- get "colombia except medellin" numbers
preserve 
	gcollapse (mean) age (sum) men women noedu_* second_* univ_* lf_* unemp_* selfemp_*, by(year birthyear medellin)
	
	rename medellin metroco 
	recode metroco (1=20) (0=21)
	
	g pop = men + women
	
	tempfile med
	save `med'
restore

append using `med'

drop if metroco == 20
drop medellin

*- get full country numbers
preserve 
	drop if metroco == 21
	gcollapse (mean) age (sum) men women noedu_* second_* univ_* lf_* unemp_* selfemp_*, by(year birthyear)
	
	g metroco = 22
	
	g pop = men + women
	
	tempfile col
	save `col'
restore

append using `col'

*- weighted average of metro areas
preserve
	drop if metroco == 9 | metroco == 0 | metroco == 21 | metroco == 22
	
	gcollapse (mean) age (mean) men women noedu_* second_* univ_* lf_* unemp_* selfemp_* [w = pop], by(year birthyear)
	
	g metroco = 23
	
	tempfile wavgmetro
	save `wavgmetro'
restore

append using `wavgmetro'

*- simple average of metro areas
preserve
	drop if metroco == 9 | metroco == 0 | metroco == 21 | metroco == 22
	
	gcollapse (mean) age (mean) men women noedu_* second_* univ_* lf_* unemp_* selfemp_*, by(year birthyear)
	
	g metroco = 24
	
	tempfile wavgmetro
	save `wavgmetro'
restore

append using `wavgmetro'

*- define variables and update value labels

g sexratio = men/women

g age1985 = round(1985 - birthyear)
g d_cohort = (age1985 > 4 & age1985 < 31)
g medellin = metroco == 9
	
replace age = round(age)

g period_5 = floor(age1985/5)*5

g cohort_5 = floor((birthyear-1900)/5)*5 + 1900 if birthyear >= 1900

lab def metroco_lbl 21 "Not Medellin" 22 "Colombia" 23 "Weighted Avg. Metro Areas" 24 "Avg. Metro Areas", add


*- rates and shares by cohort
	* education
	g sh_second_men = second_men / men
	g sh_second_women = second_women / women
	
	g sh_univ_men = univ_men / men
	g sh_univ_women = univ_women / women
	
	g lfpr_men = lf_men / men 
	g lfpr_women = lf_women / women
	
	g unemprate_men = unemp_men / lf_men
	g unemprate_women = unemp_women / lf_women
	
	g selfemprate_men = selfemp_men / (lf_men - unemp_men) 
	g selfemprate_women = selfemp_women / (lf_women - unemp_women) 
	
*- counterfactuals
	egen metroco_year = group(metroco year), label
	egen year_cohort = group(year birthyear), label

	preserve 		
		keep men women sexratio metroco year_cohort year birthyear age1985
		
		reshape wide men women sexratio, i(year_cohort) j(metroco)
		
		g gap_mde_wavg = sexratio9 - sexratio23
		g gap_mde_avg = sexratio9 - sexratio24
		g gap_mde_bog = sexratio9 - sexratio2
		
		
		g total_missing = gap_mde_wavg * women9
		
		total total_missing if year == 1973 & age > 4 & age < 31
		total total_missing if year == 1985 & age > 4 & age < 31
		total total_missing if year == 1993 & age1985 > 4 & age1985 < 31
		total total_missing if year == 2005 & age1985 > 4 & age1985 < 31
		
		gen shade_lo = -0.1 if inrange(age1985,5,32)  // lower bound of shaded area
		gen shade_hi =  0.1 if inrange(age1985,5,32) // upper bound
		
		sort age1985

		twoway (rarea shade_lo shade_hi age1985 if year == 1985 & birthyear > 1944, fcolor(gs14%50) lcolor(gs14%50)) ///
				(lpoly gap_mde_wavg age1985 if year == 1985 & birthyear > 1944, lpattern(dash) lcolor(black)) ///
				/* (lpoly gap_mde_wavg age1985 if year == 1993 & birthyear > 1944, lpattern(solid) lcolor(maroon)) */ ///
				(lpoly gap_mde_wavg age1985 if year == 2005 & birthyear > 1944, lpattern(solid) lcolor(navy)), ///
		legend(order(2 "1985" 3 "2005") position(11) ring(0)) ylabel(-0.1(0.05)0.1) ///
		yline(0, lpattern(solid) lcolor(gs12)) /// 
		xtitle("Age in 1985") ytitle("Difference in Sex Ratios (Medellin - Other Metro)") scheme(plotplainblind)
		graph export "${path}/diff_sexratios_1985_2005.png", replace
	restore

***
*-- Figures
***

preserve
	keep if cohort_5 != .
	
	gcollapse (max) age (first) period_5 (sum) men women, by(year cohort_5 metroco)
	
	g sexratio = men / women
	g pop = men + women
	
	local censusyears  1973 1985 1993 2005
	foreach y of local censusyears { 
		local ymax = `y'
		local ymin = `y' - 60
		twoway (line sexratio cohort_5 if metroco == 1 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
				(line sexratio cohort_5 if metroco == 2 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
				(line sexratio cohort_5 if metroco == 3 & age < 61 & year == `y', lwidth(vthin)lpattern(solid) lcolor(gs12)) /// 
				(line sexratio cohort_5 if metroco == 4 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
				(line sexratio cohort_5 if metroco == 5 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
				(line sexratio cohort_5 if metroco == 6 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
				(line sexratio cohort_5 if metroco == 7 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
				(line sexratio cohort_5 if metroco == 8 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
				(line sexratio cohort_5 if metroco == 10 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) ///
				(line sexratio cohort_5 if metroco == 9 & age < 61 & year == `y', lpattern(solid) lcolor(black)) ///
				(line sexratio cohort_5 if metroco == 22 & age < 61 & year == `y', lpattern(dash) lcolor(black)) , /// 
				legend(order(1 "`y' - Each line is a Metro Area" 10 "`y' - Medellin" 11 "`y' - Colombia") ring(0) position(11)) ///
				ylabel(0.7(0.1)1.3) yline(1, lpattern(solid) lcolor(gs12)) xlabel(`ymin'(15)`ymax') /// 
				xtitle("Cohort (imputed birth year)") ytitle("Men per Woman") scheme(plotplainblind)
		graph export "${path}/sexratios_metro_cohort5_`y'.png", replace
	}
	
	
	local censusyears  1985
	foreach y of local censusyears { 
		twoway (line sexratio period_5 if metroco == 9 & age < 41 & year == `y', lpattern(solid) lcolor(black)) /// 
				(line sexratio period_5 if metroco == 23 & age < 41 & year == `y', lpattern(dash) lcolor(gs12)), /// 
				legend(order(1 "`y' - Medellin" 2 "`y' - Avg. Other Metro Areas") ring(0) position(11)) ///
				ylabel(0.7(0.1)1.3) yline(1, lpattern(solid) lcolor(gs12)) xlabel(-20(10)40) /// 
				xtitle("Age in 1985") ytitle("Men per Woman") scheme(plotplainblind)
		graph export "${path}/sexratios_medvmetro_period5_`y'.png", replace
	}

	local censusyears  1993
	foreach y of local censusyears { 
		twoway (line sexratio period_5 if metroco == 9 & age < 49 & year == `y', lpattern(solid) lcolor(maroon)) /// 
				(line sexratio period_5 if metroco == 23 & age < 49 & year == `y', lpattern(dash) lcolor(dkorange)), /// 
				legend(order(1 "`y' - Medellin" 2 "`y' - Avg. Other Metro Areas") ring(0) position(11)) ///
				ylabel(0.7(0.1)1.3) yline(1, lpattern(solid) lcolor(gs12)) xlabel(-20(10)40) /// 
				xtitle("Age in 1985") ytitle("Men per Woman") scheme(plotplainblind)
		graph export "${path}/sexratios_medvmetro_period5_`y'.png", replace
	}

	local censusyears  2005
	foreach y of local censusyears { 
		twoway (line sexratio period_5 if metroco == 9 & age < 61 & year == `y', lpattern(solid) lcolor(navy)) /// 
				(line sexratio period_5 if metroco == 23 & age < 61 & year == `y', lpattern(dash) lcolor(blue)), /// 
				legend(order(1 "`y' - Medellin" 2 "`y' - Avg. Other Metro Areas") ring(0) position(11)) ///
				ylabel(0.7(0.1)1.3) yline(1, lpattern(solid) lcolor(gs12)) xlabel(-20(10)40) /// 
				xtitle("Age in 1985") ytitle("Men per Woman") scheme(plotplainblind)
		graph export "${path}/sexratios_medvmetro_period5_`y'.png", replace
	}
	
restore

**
*- Figures: yearly with local polynomial
**
local censusyears  1973 1985 1993 2005
foreach y of local censusyears { 
	twoway (lpoly sexratio birthyear if metroco == 1 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
			(lpoly sexratio birthyear if metroco == 2 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
			(lpoly sexratio birthyear if metroco == 3 & age < 61 & year == `y', lwidth(vthin)lpattern(solid) lcolor(gs12)) /// 
			(lpoly sexratio birthyear if metroco == 4 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
			(lpoly sexratio birthyear if metroco == 5 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
			(lpoly sexratio birthyear if metroco == 6 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
			(lpoly sexratio birthyear if metroco == 7 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
			(lpoly sexratio birthyear if metroco == 8 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) /// 
			(lpoly sexratio birthyear if metroco == 10 & age < 61 & year == `y', lwidth(vthin) lpattern(solid) lcolor(gs12)) ///
			(lpoly sexratio birthyear if metroco == 9 & age < 61 & year == `y', lpattern(solid) lcolor(black)) ///
			(lpoly sexratio birthyear if metroco == 22 & age < 61 & year == `y', lpattern(dash) lcolor(black)) , /// 
			legend(order(1 "`y' - Each line is a Metro Area" 10 "`y' - Medellin" 11 "`y' - Colombia") ring(0) position(11)) ///
			ylabel(0.7(0.1)1.3) yline(1, lpattern(solid) lcolor(gs12)) xlabel(1910(15)1985) /// 
			xtitle("Cohort (imputed birth year)") ytitle("Men per Woman") scheme(plotplainblind)
	graph export "${path}/sexratios_metro_birthyear_`y'.png", replace
}

local censusyears  1985
foreach y of local censusyears { 
	twoway (lpoly sexratio age1985 if metroco == 9 & age < 41 & year == `y', lpattern(solid) lcolor(black)) /// 
			(lpoly sexratio age1985 if metroco == 23 & age < 41 & year == `y', lpattern(dash) lcolor(gs12)), /// 
			legend(order(1 "`y' - Medellin" 2 "`y' - Avg. Other Metro Areas") ring(0) position(11)) ///
			ylabel(0.7(0.1)1.3) yline(1, lpattern(solid) lcolor(gs12)) xlabel(-20(10)40) /// 
			xtitle("Age in 1985") ytitle("Men per Woman") scheme(plotplainblind)
	graph export "${path}/sexratios_medvmetro_age1985_`y'.png", replace
}

local censusyears  1993
foreach y of local censusyears { 
	twoway (lpoly sexratio age1985 if metroco == 9 & age < 49 & year == `y', lpattern(solid) lcolor(maroon)) /// 
			(lpoly sexratio age1985 if metroco == 23 & age < 49 & year == `y', lpattern(dash) lcolor(dkorange)), /// 
			legend(order(1 "`y' - Medellin" 2 "`y' - Avg. Other Metro Areas") ring(0) position(11)) ///
			ylabel(0.7(0.1)1.3) yline(1, lpattern(solid) lcolor(gs12)) xlabel(-20(10)40) /// 
			xtitle("Age in 1985") ytitle("Men per Woman") scheme(plotplainblind)
	graph export "${path}/sexratios_medvmetro_age1985_`y'.png", replace
}

local censusyears  2005
foreach y of local censusyears { 
	twoway (lpoly sexratio age1985 if metroco == 9 & age < 61 & year == `y', lpattern(solid) lcolor(navy)) /// 
			(lpoly sexratio age1985 if metroco == 23 & age < 61 & year == `y', lpattern(dash) lcolor(blue)), /// 
			legend(order(1 "`y' - Medellin" 2 "`y' - Avg. Other Metro Areas") ring(0) position(11)) ///
			ylabel(0.7(0.1)1.3) yline(1, lpattern(solid) lcolor(gs12)) xlabel(-20(10)40) /// 
			xtitle("Age in 1985") ytitle("Men per Woman") scheme(plotplainblind)
	graph export "${path}/sexratios_medvmetro_age1985_`y'.png", replace
}
