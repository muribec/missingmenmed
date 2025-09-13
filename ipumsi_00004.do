* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix               ///
  int     year       1-4    ///
  double  hhwt       5-12   ///
  long    geo1_co    13-18  ///
  double  geo2_co    19-27  ///
  byte    metroco    28-29  ///
  double  perwt      30-37  ///
  int     age        38-40  ///
  byte    sex        41-41  ///
  int     birthyr    42-45  ///
  byte    bplco1     46-47  ///
  int     bplco2     48-50  ///
  byte    bplco3     51-51  ///
  byte    edattain   52-52  ///
  int     edattaind  53-55  ///
  byte    empstat    56-56  ///
  int     empstatd   57-59  ///
  byte    labforce   60-60  ///
  byte    classwk    61-61  ///
  int     classwkd   62-64  ///
  using `"ipumsi_00004.dat"'

replace hhwt      = hhwt      / 100
replace perwt     = perwt     / 100

format hhwt      %8.2f
format geo2_co   %9.0f
format perwt     %8.2f

label var year      `"Year"'
label var hhwt      `"Household weight"'
label var geo1_co   `"Colombia, Department 1964 - 2005 [Level 1; consistent boundaries, GIS]"'
label var geo2_co   `"Colombia, Municipality 1973 - 2005 [Level 2; consistent boundaries, GIS]"'
label var metroco   `"Colombia, Metropolitan area"'
label var perwt     `"Person weight"'
label var age       `"Age"'
label var sex       `"Sex"'
label var birthyr   `"Year of birth"'
label var bplco1    `"Department of birth, Colombia"'
label var bplco2    `"Municipality of birth recode, Colombia"'
label var bplco3    `"Born in this municipality, Colombia"'
label var edattain  `"Educational attainment, international recode [general version]"'
label var edattaind `"Educational attainment, international recode [detailed version]"'
label var empstat   `"Activity status (employment status) [general version]"'
label var empstatd  `"Activity status (employment status) [detailed version]"'
label var labforce  `"Labor force participation"'
label var classwk   `"Status in employment (class of worker) [general version]"'
label var classwkd  `"Status in employment (class of worker) [detailed version]"'

label define year_lbl 1703 `"1703"'
label define year_lbl 1729 `"1729"', add
label define year_lbl 1787 `"1787"', add
label define year_lbl 1801 `"1801"', add
label define year_lbl 1819 `"1819"', add
label define year_lbl 1845 `"1845"', add
label define year_lbl 1848 `"1848"', add
label define year_lbl 1850 `"1850"', add
label define year_lbl 1851 `"1851"', add
label define year_lbl 1852 `"1852"', add
label define year_lbl 1860 `"1860"', add
label define year_lbl 1861 `"1861"', add
label define year_lbl 1865 `"1865"', add
label define year_lbl 1868 `"1868"', add
label define year_lbl 1870 `"1870"', add
label define year_lbl 1871 `"1871"', add
label define year_lbl 1875 `"1875"', add
label define year_lbl 1880 `"1880"', add
label define year_lbl 1881 `"1881"', add
label define year_lbl 1885 `"1885"', add
label define year_lbl 1890 `"1890"', add
label define year_lbl 1891 `"1891"', add
label define year_lbl 1900 `"1900"', add
label define year_lbl 1901 `"1901"', add
label define year_lbl 1910 `"1910"', add
label define year_lbl 1911 `"1911"', add
label define year_lbl 1960 `"1960"', add
label define year_lbl 1961 `"1961"', add
label define year_lbl 1962 `"1962"', add
label define year_lbl 1963 `"1963"', add
label define year_lbl 1964 `"1964"', add
label define year_lbl 1966 `"1966"', add
label define year_lbl 1968 `"1968"', add
label define year_lbl 1969 `"1969"', add
label define year_lbl 1970 `"1970"', add
label define year_lbl 1971 `"1971"', add
label define year_lbl 1972 `"1972"', add
label define year_lbl 1973 `"1973"', add
label define year_lbl 1974 `"1974"', add
label define year_lbl 1975 `"1975"', add
label define year_lbl 1976 `"1976"', add
label define year_lbl 1977 `"1977"', add
label define year_lbl 1978 `"1978"', add
label define year_lbl 1979 `"1979"', add
label define year_lbl 1980 `"1980"', add
label define year_lbl 1981 `"1981"', add
label define year_lbl 1982 `"1982"', add
label define year_lbl 1983 `"1983"', add
label define year_lbl 1984 `"1984"', add
label define year_lbl 1985 `"1985"', add
label define year_lbl 1986 `"1986"', add
label define year_lbl 1987 `"1987"', add
label define year_lbl 1989 `"1989"', add
label define year_lbl 1990 `"1990"', add
label define year_lbl 1991 `"1991"', add
label define year_lbl 1992 `"1992"', add
label define year_lbl 1993 `"1993"', add
label define year_lbl 1994 `"1994"', add
label define year_lbl 1995 `"1995"', add
label define year_lbl 1996 `"1996"', add
label define year_lbl 1997 `"1997"', add
label define year_lbl 1998 `"1998"', add
label define year_lbl 1999 `"1999"', add
label define year_lbl 2000 `"2000"', add
label define year_lbl 2001 `"2001"', add
label define year_lbl 2002 `"2002"', add
label define year_lbl 2003 `"2003"', add
label define year_lbl 2004 `"2004"', add
label define year_lbl 2005 `"2005"', add
label define year_lbl 2006 `"2006"', add
label define year_lbl 2007 `"2007"', add
label define year_lbl 2008 `"2008"', add
label define year_lbl 2009 `"2009"', add
label define year_lbl 2010 `"2010"', add
label define year_lbl 2011 `"2011"', add
label define year_lbl 2012 `"2012"', add
label define year_lbl 2013 `"2013"', add
label define year_lbl 2014 `"2014"', add
label define year_lbl 2015 `"2015"', add
label define year_lbl 2016 `"2016"', add
label define year_lbl 2017 `"2017"', add
label define year_lbl 2018 `"2018"', add
label define year_lbl 2019 `"2019"', add
label define year_lbl 2020 `"2020"', add
label values year year_lbl

label define geo1_co_lbl 170005 `"Antioquia"'
label define geo1_co_lbl 170008 `"Atlántico"', add
label define geo1_co_lbl 170011 `"Bogotá D.C., Cundinamarca"', add
label define geo1_co_lbl 170013 `"Bolívar, Sucre"', add
label define geo1_co_lbl 170015 `"Boyacá, Casanare"', add
label define geo1_co_lbl 170018 `"Caquetá"', add
label define geo1_co_lbl 170019 `"Cauca"', add
label define geo1_co_lbl 170023 `"Córdoba"', add
label define geo1_co_lbl 170027 `"Chocó"', add
label define geo1_co_lbl 170041 `"Huila"', add
label define geo1_co_lbl 170044 `"La Guajira"', add
label define geo1_co_lbl 170050 `"Meta"', add
label define geo1_co_lbl 170052 `"Nariño"', add
label define geo1_co_lbl 170054 `"Cesar, Norte De Santander, Magdalena"', add
label define geo1_co_lbl 170066 `"Caldas, Quindío, Risaralda"', add
label define geo1_co_lbl 170068 `"Santander"', add
label define geo1_co_lbl 170073 `"Tolima"', add
label define geo1_co_lbl 170076 `"Valle Del Cauca"', add
label define geo1_co_lbl 170081 `"Arauca"', add
label define geo1_co_lbl 170086 `"Putumayo"', add
label define geo1_co_lbl 170088 `"Archipiélago De San Andrés Y Providencia"', add
label define geo1_co_lbl 170095 `"Amazonas, Guaviare, Vaupés, Vichada, Guainía"', add
label values geo1_co geo1_co_lbl

label define geo2_co_lbl 170005001 `"Medellín"'
label define geo2_co_lbl 170005002 `"Bucaramanga"', add
label define geo2_co_lbl 170005003 `"Bello"', add
label define geo2_co_lbl 170005004 `"Floridablanca"', add
label define geo2_co_lbl 170005005 `"Itagui"', add
label define geo2_co_lbl 170005006 `"San Pedro de Uraba, Turbo, Necoclí"', add
label define geo2_co_lbl 170005007 `"Barrancabermeja"', add
label define geo2_co_lbl 170005008 `"Envigado"', add
label define geo2_co_lbl 170005009 `"Girón"', add
label define geo2_co_lbl 170005010 `"Piedecuesta, Santa Bárbara"', add
label define geo2_co_lbl 170005011 `"Chigorodó, Carepa"', add
label define geo2_co_lbl 170005012 `"Rionegro"', add
label define geo2_co_lbl 170005013 `"Apartadó"', add
label define geo2_co_lbl 170005014 `"Caucasia, Nechí"', add
label define geo2_co_lbl 170005015 `"Carolina, Entrerrios, Gómez Plata, Guadalupe, Angostura, Santa Rosa de Osos"', add
label define geo2_co_lbl 170005016 `"Cáceres, Tarazá, Valdivia"', add
label define geo2_co_lbl 170005017 `"Abejorral, Argelia, Sonson, Nariño"', add
label define geo2_co_lbl 170005018 `"Fredonia, La Pintada, Santa Bárbara, Valparaíso, Venecia"', add
label define geo2_co_lbl 170005019 `"Caldas"', add
label define geo2_co_lbl 170005020 `"Betulia, El Carmen de Chucurí, Galán, Cabrera, San Vicente de Chucurí, Palmar, Zapatoca"', add
label define geo2_co_lbl 170005021 `"El Bagre, Zaragoza"', add
label define geo2_co_lbl 170005022 `"Copacabana"', add
label define geo2_co_lbl 170005023 `"El Carmen de Viboral, La Unión"', add
label define geo2_co_lbl 170005024 `"Puerto Berrío, Puerto Nare"', add
label define geo2_co_lbl 170005025 `"Arboletes, San Juan de Urabá"', add
label define geo2_co_lbl 170005026 `"Giraldo, Liborina, Santafé de Antioquia, Anza, Caicedo, Olaya"', add
label define geo2_co_lbl 170005027 `"Concepción, Granada, Guatape, Alejandría, San Rafael, San Roque"', add
label define geo2_co_lbl 170005028 `"La Estrella"', add
label define geo2_co_lbl 170005029 `"Chipatá, Guavatá, Güepsa, Puente Nacional, San Benito, Vélez"', add
label define geo2_co_lbl 170005030 `"Puerto Wilches, Sabana de Torres"', add
label define geo2_co_lbl 170005031 `"Andes, Pueblorrico"', add
label define geo2_co_lbl 170005032 `"Dabeiba, Frontino, Mutatá"', add
label define geo2_co_lbl 170005033 `"Bolívar, El Peñón, Landázuri, Puerto Parra, Sucre"', add
label define geo2_co_lbl 170005034 `"La Ceja"', add
label define geo2_co_lbl 170005035 `"Ebéjico, Heliconia, San Jerónimo, Sopetrán"', add
label define geo2_co_lbl 170005036 `"Aratoca, Barichara, Jordán, Curití, Los Santos, Villanueva"', add
label define geo2_co_lbl 170005037 `"Sabaneta"', add
label define geo2_co_lbl 170005038 `"Marinilla"', add
label define geo2_co_lbl 170005039 `"Amalfi, Anorí, Campamento, Vegachí"', add
label define geo2_co_lbl 170005040 `"Briceño, Toledo, Yarumal"', add
label define geo2_co_lbl 170005041 `"Maceo, Caracolí, San Carlos, Yolombó"', add
label define geo2_co_lbl 170005042 `"Murindó, Abriaquí, Urrao, Vigía del Fuerte"', add
label define geo2_co_lbl 170005043 `"Aguada, Confines, Contratación, Guadalupe, Guapotá, Ocamonte, Oiba, Páramo, Palmas del Socorro, Valle de San José"', add
label define geo2_co_lbl 170005044 `"Girardota"', add
label define geo2_co_lbl 170005045 `"San Gil"', add
label define geo2_co_lbl 170005046 `"Hispania, Betania, Ciudad Bolívar"', add
label define geo2_co_lbl 170005047 `"Barbosa"', add
label define geo2_co_lbl 170005048 `"San Vicente, Peñol"', add
label define geo2_co_lbl 170005049 `"Yalí, Yondó, Remedios"', add
label define geo2_co_lbl 170005050 `"El Playón, Rionegro"', add
label define geo2_co_lbl 170005051 `"Don Matías, San Pedro"', add
label define geo2_co_lbl 170005052 `"Guarne"', add
label define geo2_co_lbl 170005053 `"Concordia, Angelópolis, Titiribí"', add
label define geo2_co_lbl 170005054 `"Ituango, Buriticá, Peque"', add
label define geo2_co_lbl 170005055 `"Segovia"', add
label define geo2_co_lbl 170005056 `"Cimitarra"', add
label define geo2_co_lbl 170005057 `"Pinchote, Socorro"', add
label define geo2_co_lbl 170005058 `"Lebríja"', add
label define geo2_co_lbl 170005059 `"Cepitá, Cerrito, Guaca, Molagavita, San Andrés"', add
label define geo2_co_lbl 170005060 `"Amagá"', add
label define geo2_co_lbl 170005061 `"Capitanejo, Málaga, San José de Miranda"', add
label define geo2_co_lbl 170005062 `"Jardín, Jericó"', add
label define geo2_co_lbl 170005063 `"Coromoro, Encino, Mogotes, Onzaga, San Joaquín"', add
label define geo2_co_lbl 170005064 `"Chima, El Guacamayo, Hato, La Paz, Santa Helena del Opón, Simacota"', add
label define geo2_co_lbl 170005065 `"San Luis, Puerto Triunfo"', add
label define geo2_co_lbl 170005066 `"El Santuario"', add
label define geo2_co_lbl 170005067 `"Barbosa"', add
label define geo2_co_lbl 170005068 `"Charalá, Gambita, Suaita"', add
label define geo2_co_lbl 170005069 `"Montebello, Retiro"', add
label define geo2_co_lbl 170005070 `"Salgar, Tarso"', add
label define geo2_co_lbl 170005071 `"Tona, California, Charta, Matanza, Suratá, Vetas"', add
label define geo2_co_lbl 170005072 `"Uramita, Cañasgordas"', add
label define geo2_co_lbl 170005073 `"Belmira, Sabanalarga, San Andrés de Cuerquía, San José de la Montaña"', add
label define geo2_co_lbl 170005074 `"Caramanta, Támesis"', add
label define geo2_co_lbl 170005075 `"Albania, Florián, Jesús María, La Belleza"', add
label define geo2_co_lbl 170005076 `"Cocorná, San Francisco"', add
label define geo2_co_lbl 170005077 `"Cisneros, Santo Domingo"', add
label define geo2_co_lbl 170005078 `"Armenia, Betulia"', add
label define geo2_co_lbl 170005079 `"San Miguel, Carcasí, Concepción, Enciso, Macaravita"', add
label define geo2_co_lbl 170008001 `"Barranquilla, Puerto Colombia, Soledad"', add
label define geo2_co_lbl 170008002 `"Cartagena, Turbaco"', add
label define geo2_co_lbl 170008003 `"Magangué"', add
label define geo2_co_lbl 170008004 `"Cicuco, Talaigua Nuevo, El Peñón, Hatillo de Loba, Mompós, San Fernando, San Martín de Loba"', add
label define geo2_co_lbl 170008005 `"Malambo"', add
label define geo2_co_lbl 170008006 `"Polonuevo, Sabanalarga"', add
label define geo2_co_lbl 170008007 `"Luruaco, Clemencia, Santa Catalina, Santa Rosa, Villanueva"', add
label define geo2_co_lbl 170008008 `"Arjona, Turbaná"', add
label define geo2_co_lbl 170008009 `"El Carmen de Bolívar"', add
label define geo2_co_lbl 170008010 `"Arroyohondo, Calamar, Mahates"', add
label define geo2_co_lbl 170008011 `"Baranoa"', add
label define geo2_co_lbl 170008012 `"Margarita, Pinillos, Tiquisio"', add
label define geo2_co_lbl 170008013 `"María La Baja"', add
label define geo2_co_lbl 170008014 `"Simití, Santa Rosa del Sur"', add
label define geo2_co_lbl 170008015 `"Suan, Campo de la Cruz, Santa Lucía"', add
label define geo2_co_lbl 170008016 `"Arenal, Morales, Regidor, Río Viejo"', add
label define geo2_co_lbl 170008017 `"El Guamo, San Juan Nepomuceno"', add
label define geo2_co_lbl 170008018 `"Juan de Acosta, Piojó, Tubará, Usiacurí"', add
label define geo2_co_lbl 170008019 `"Manatí, Repelón"', add
label define geo2_co_lbl 170008020 `"Achí, Montecristo, San Jacinto del Cauca"', add
label define geo2_co_lbl 170008021 `"Cantagallo, San Pablo"', add
label define geo2_co_lbl 170008022 `"San Cristóbal, Soplaviento, San Estanislao"', add
label define geo2_co_lbl 170008023 `"Galapa"', add
label define geo2_co_lbl 170008024 `"Candelaria, Ponedera"', add
label define geo2_co_lbl 170008025 `"Sabanagrande"', add
label define geo2_co_lbl 170008026 `"Altos del Rosario, Barranco de Loba"', add
label define geo2_co_lbl 170008027 `"Córdoba, Zambrano"', add
label define geo2_co_lbl 170008028 `"Santo Tomás"', add
label define geo2_co_lbl 170008029 `"Palmar de Varela"', add
label define geo2_co_lbl 170008030 `"San Jacinto"', add
label define geo2_co_lbl 170011001 `"Bogotá,  DC"', add
label define geo2_co_lbl 170011099 `"Bogotá. D.E. department, municipality unknown"', add
label define geo2_co_lbl 170015002 `"Motavita, Oicatá, Tunja, Chivatá, Cucaita, Chíquiza, Sora, Soracá"', add
label define geo2_co_lbl 170015004 `"Sogamoso"', add
label define geo2_co_lbl 170015005 `"Duitama"', add
label define geo2_co_lbl 170015006 `"Yopal"', add
label define geo2_co_lbl 170015008 `"Cómbita, Cuítiva, Firavitoba, Iza, Siachoque, Sotaquirá, Toca, Tuta, Viracachá"', add
label define geo2_co_lbl 170015009 `"Chiquinquirá"', add
label define geo2_co_lbl 170015010 `"Puerto Boyacá"', add
label define geo2_co_lbl 170015011 `"Garagoa, Guateque, Guayatá, Somondoco, Sutatenza, Tenza"', add
label define geo2_co_lbl 170015012 `"Briceño, Saboyá, Santa Sofía, Arcabuco, Caldas, Coper, Buenavista, Gachantivá"', add
label define geo2_co_lbl 170015014 `"Samacá, Turmequé, Ventaquemada"', add
label define geo2_co_lbl 170015015 `"Ráquira, Sáchica, San Miguel de Sema, Villa de Leyva, Sutamarchán, Tinjacá"', add
label define geo2_co_lbl 170015016 `"Maripí, Muzo, Quípama, San Pablo de Borbur, La Victoria"', add
label define geo2_co_lbl 170015017 `"Mongua, Monguí, Sativasur, Chita, Tópaga, Socotá"', add
label define geo2_co_lbl 170015019 `"Villanueva, Monterrey, Sabanalarga"', add
label define geo2_co_lbl 170015020 `"Pajarito, Paya, Pisba, Labranzagrande, La Salina, Nunchía, Pore, Sácama, Támara"', add
label define geo2_co_lbl 170015021 `"Maní, Orocué, San Luis de Palenque, Trinidad"', add
label define geo2_co_lbl 170015022 `"Hato Corozal, Paz de Ariporo"', add
label define geo2_co_lbl 170015023 `"Chiscas, Cubará, Güicán, Panqueba, San Mateo, Boavita, Covarachía, El Espino, Guacamayas, Soatá, Tipacoque"', add
label define geo2_co_lbl 170015024 `"Paz de Río, Betéitiva, Corrales, Floresta, Gameza, Busbanzá, Socha, Tasco"', add
label define geo2_co_lbl 170015025 `"Nuevo Colón, Ramiriquí, Boyacá, Ciénega, Jenesano"', add
label define geo2_co_lbl 170015026 `"Pesca, Aquitania, Tota"', add
label define geo2_co_lbl 170015028 `"Aguazul"', add
label define geo2_co_lbl 170015029 `"Paipa"', add
label define geo2_co_lbl 170015030 `"Nobsa, Tibasosa"', add
label define geo2_co_lbl 170015031 `"San José de Pare, Santana, Chitaraque, Togüí"', add
label define geo2_co_lbl 170015032 `"Miraflores, Rondón, San Eduardo, Berbeo, Chinavita, Zetaquira"', add
label define geo2_co_lbl 170015033 `"Santa Rosa de Viterbo, Belén, Cerinza"', add
label define geo2_co_lbl 170015034 `"San Luis de Gaceno, Santa María, Almeida, Campohermoso, Chivor, Macanal"', add
label define geo2_co_lbl 170015035 `"Pachavita, La Capilla, Tibaná, Umbita"', add
label define geo2_co_lbl 170015036 `"Otanche, Pauna, Tununguá"', add
label define geo2_co_lbl 170015037 `"Jericó, Sativanorte, El Cocuy, La Uvita, Susacón, Tutazá"', add
label define geo2_co_lbl 170015038 `"Moniquirá"', add
label define geo2_co_lbl 170015039 `"Páez, Chameza, Recetor, Tauramena"', add
label define geo2_co_lbl 170017001 `"Manizales"', add
label define geo2_co_lbl 170017002 `"La Dorada"', add
label define geo2_co_lbl 170017003 `"Aranzazu, Filadelfia, Neira"', add
label define geo2_co_lbl 170017004 `"Anserma, Palestina"', add
label define geo2_co_lbl 170017005 `"Chinchiná"', add
label define geo2_co_lbl 170017006 `"Villamaría"', add
label define geo2_co_lbl 170017007 `"Aguadas, Salamina"', add
label define geo2_co_lbl 170017008 `"Belalcázar, Risaralda, San José, Viterbo"', add
label define geo2_co_lbl 170017009 `"Riosucio"', add
label define geo2_co_lbl 170017010 `"Samaná, Norcasia, Victoria"', add
label define geo2_co_lbl 170017011 `"Marmato, Supía"', add
label define geo2_co_lbl 170017012 `"Manzanares, Marquetalia"', add
label define geo2_co_lbl 170017013 `"Marulanda, Pensilvania"', add
label define geo2_co_lbl 170017014 `"Pácora, La Merced"', add
label define geo2_co_lbl 170018001 `"Florencia"', add
label define geo2_co_lbl 170018002 `"Puerto Rico, Cartagena del Chairá"', add
label define geo2_co_lbl 170018003 `"San Vicente del Caguán"', add
label define geo2_co_lbl 170018004 `"El Doncello, El Paujil"', add
label define geo2_co_lbl 170018005 `"Solano, Solita, Valparaíso, Curillo"', add
label define geo2_co_lbl 170018006 `"La Montañita, Milán, Morelia"', add
label define geo2_co_lbl 170018007 `"San José del Fragua, Albania, Belén de los Andaquies"', add
label define geo2_co_lbl 170019001 `"Popayán"', add
label define geo2_co_lbl 170019002 `"Santander de Quilichao, Villa Rica"', add
label define geo2_co_lbl 170019003 `"Almaguer, Bolívar, Sucre"', add
label define geo2_co_lbl 170019004 `"Silvia, Totoró"', add
label define geo2_co_lbl 170019005 `"Piamonte, La Vega, San Sebastián, Santa Rosa"', add
label define geo2_co_lbl 170019006 `"Puerto Tejada"', add
label define geo2_co_lbl 170019007 `"Buenos Aires, Suárez"', add
label define geo2_co_lbl 170019008 `"Jambaló, Toribio"', add
label define geo2_co_lbl 170019009 `"Miranda, Padilla"', add
label define geo2_co_lbl 170019010 `"Caloto"', add
label define geo2_co_lbl 170019011 `"Piendamó"', add
label define geo2_co_lbl 170019012 `"Cajibío"', add
label define geo2_co_lbl 170019013 `"Argelia, El Tambo"', add
label define geo2_co_lbl 170019014 `"Paez"', add
label define geo2_co_lbl 170019015 `"Puracé, Sotara"', add
label define geo2_co_lbl 170019016 `"Caldono"', add
label define geo2_co_lbl 170019017 `"Timbío"', add
label define geo2_co_lbl 170019018 `"Guapi"', add
label define geo2_co_lbl 170019019 `"López, Timbiquí"', add
label define geo2_co_lbl 170019020 `"Inzá"', add
label define geo2_co_lbl 170019021 `"Morales"', add
label define geo2_co_lbl 170019022 `"Florencia, Mercaderes"', add
label define geo2_co_lbl 170019023 `"Balboa"', add
label define geo2_co_lbl 170019024 `"Rosas, La Sierra"', add
label define geo2_co_lbl 170019025 `"Corinto"', add
label define geo2_co_lbl 170019026 `"Patía"', add
label define geo2_co_lbl 170020001 `"Cúcuta, Puerto Santander, Tibú"', add
label define geo2_co_lbl 170020002 `"Valledupar, Pueblo Bello"', add
label define geo2_co_lbl 170020003 `"González, Ocaña, Río de Oro, San Alberto, San Martín"', add
label define geo2_co_lbl 170020004 `"Los Patios, Villa del Rosario"', add
label define geo2_co_lbl 170020005 `"Aguachica"', add
label define geo2_co_lbl 170020006 `"Abrego, Cachirá, La Esperanza, La Playa"', add
label define geo2_co_lbl 170020007 `"Agustín Codazzi, Becerril"', add
label define geo2_co_lbl 170020008 `"Chiriguaná, El Paso, La Jagua de Ibirico"', add
label define geo2_co_lbl 170020009 `"Bosconia, El Copey"', add
label define geo2_co_lbl 170020010 `"Astrea, Chimichagua"', add
label define geo2_co_lbl 170020011 `"Pamplona"', add
label define geo2_co_lbl 170020012 `"Pailitas, Pelaya, Tamalameque"', add
label define geo2_co_lbl 170020013 `"El Tarra, Hacarí, San Calixto, Teorama"', add
label define geo2_co_lbl 170020014 `"Bucarasica, Salazar, Santiago, Sardinata, Villa Caro"', add
label define geo2_co_lbl 170020015 `"Manaure, La Paz, San Diego"', add
label define geo2_co_lbl 170020016 `"Bochalema, El Zulia, Gramalote, Lourdes, San Cayetano"', add
label define geo2_co_lbl 170020017 `"Arboledas, Cácota, Cucutilla, Durania, Labateca, Mutiscua, Pamplonita"', add
label define geo2_co_lbl 170020018 `"Chitagá, Silos, Toledo, Herrán"', add
label define geo2_co_lbl 170020019 `"Gamarra, La Gloria"', add
label define geo2_co_lbl 170020020 `"Curumaní"', add
label define geo2_co_lbl 170020021 `"Convención, El Carmen"', add
label define geo2_co_lbl 170020022 `"Chinácota, Ragonvalia"', add
label define geo2_co_lbl 170023001 `"Montería, Planeta Rica, Tierralta"', add
label define geo2_co_lbl 170023002 `"Cotorra, Lorica, Momil, San Pelayo"', add
label define geo2_co_lbl 170023003 `"Ayapel, Buenavista, La Apartada, Montelíbano, Puerto Libertador"', add
label define geo2_co_lbl 170023004 `"Sahagún"', add
label define geo2_co_lbl 170023005 `"Cereté"', add
label define geo2_co_lbl 170023006 `"Chimá, Ciénaga de Oro"', add
label define geo2_co_lbl 170023007 `"San Andrés Sotavento"', add
label define geo2_co_lbl 170023008 `"San Bernardo del Viento, Moñitos"', add
label define geo2_co_lbl 170023009 `"Chinú"', add
label define geo2_co_lbl 170023010 `"Purísima, San Antero"', add
label define geo2_co_lbl 170023011 `"Pueblo Nuevo"', add
label define geo2_co_lbl 170023012 `"Valencia"', add
label define geo2_co_lbl 170023013 `"Canalete, Los Córdobas"', add
label define geo2_co_lbl 170023014 `"San Carlos"', add
label define geo2_co_lbl 170023015 `"Puerto Escondido"', add
label define geo2_co_lbl 170025001 `"Soacha, Granada"', add
label define geo2_co_lbl 170025002 `"Facatativá"', add
label define geo2_co_lbl 170025003 `"Fusagasugá"', add
label define geo2_co_lbl 170025004 `"Zipaquirá"', add
label define geo2_co_lbl 170025005 `"Girardot"', add
label define geo2_co_lbl 170025006 `"Chía"', add
label define geo2_co_lbl 170025007 `"Mosquera"', add
label define geo2_co_lbl 170025008 `"Madrid"', add
label define geo2_co_lbl 170025009 `"Funza"', add
label define geo2_co_lbl 170025010 `"Puerto Salgar, Bituima, Guaduas, Guayabal de Siquima, Vianí"', add
label define geo2_co_lbl 170025011 `"Cajicá"', add
label define geo2_co_lbl 170025012 `"Suesca, Nemocón, Cogua"', add
label define geo2_co_lbl 170025013 `"Sasaima, Albán, Anolaima, Cachipay"', add
label define geo2_co_lbl 170025014 `"Sutatausa, Lenguazaque, Cucunubá, Villapinzón"', add
label define geo2_co_lbl 170025015 `"Gachancipá, Tocancipá"', add
label define geo2_co_lbl 170025016 `"Guachetá, Susa, Simijaca, Fúquene"', add
label define geo2_co_lbl 170025017 `"Ricaurte, Agua de Dios, Tocaima"', add
label define geo2_co_lbl 170025018 `"Cota, Tenjo"', add
label define geo2_co_lbl 170025019 `"La Calera, Choachí"', add
label define geo2_co_lbl 170025020 `"Medina, Paratebueno, Gachala, Ubalá"', add
label define geo2_co_lbl 170025021 `"Villa de San Diego de Ubate"', add
label define geo2_co_lbl 170025022 `"Paime, San Cayetano, Carmen de Carupa, Tausa, Topaipí, Villagómez"', add
label define geo2_co_lbl 170025023 `"Junín, Macheta, Guasca, Guatavita"', add
label define geo2_co_lbl 170025024 `"Sibaté"', add
label define geo2_co_lbl 170025025 `"Caparrapí, Yacopí"', add
label define geo2_co_lbl 170025026 `"Sesquilé, Chocontá"', add
label define geo2_co_lbl 170025027 `"El Colegio, Tena"', add
label define geo2_co_lbl 170025028 `"Apulo, Anapoima, Quipile"', add
label define geo2_co_lbl 170025029 `"Subachoque, El Rosal"', add
label define geo2_co_lbl 170025030 `"La Palma, Supatá, El Peñón, Vergara"', add
label define geo2_co_lbl 170025031 `"La Mesa"', add
label define geo2_co_lbl 170025032 `"La Peña, Nimaima, Nocaima, Quebradanegra, Útica"', add
label define geo2_co_lbl 170025033 `"Quetame, Fomeque, Guayabetal, Gutiérrez"', add
label define geo2_co_lbl 170025034 `"Jerusalén, Nariño, Pulí, San Juan de Río Seco, Beltrán, Chaguaní, Guataquí"', add
label define geo2_co_lbl 170025035 `"Nilo, Tibacuy, Viotá"', add
label define geo2_co_lbl 170025036 `"San Antonio del Tequendama, Bojacá, Zipacón"', add
label define geo2_co_lbl 170025037 `"Pacho"', add
label define geo2_co_lbl 170025038 `"Villeta"', add
label define geo2_co_lbl 170025039 `"Venecia, Pandi, San Bernardo, Cabrera"', add
label define geo2_co_lbl 170025040 `"Caqueza, Ubaque"', add
label define geo2_co_lbl 170025041 `"Chipaque, Fosca, Une"', add
label define geo2_co_lbl 170025042 `"Manta, Gachetá, Gama, Tibirita"', add
label define geo2_co_lbl 170025043 `"Pasca, Arbeláez"', add
label define geo2_co_lbl 170025044 `"Sopó"', add
label define geo2_co_lbl 170025045 `"Silvania"', add
label define geo2_co_lbl 170025046 `"Tabio"', add
label define geo2_co_lbl 170025047 `"La Vega, San Francisco"', add
label define geo2_co_lbl 170027001 `"Pereira"', add
label define geo2_co_lbl 170027002 `"Dosquebradas"', add
label define geo2_co_lbl 170027003 `"Medio Atrato, Río Quito, Quibdó, Atrato"', add
label define geo2_co_lbl 170027004 `"Pueblo Rico, Medio San Juan, Río Iro, Tadó, Unión Panamericana, El Cantón del San Pablo, Cértegui, Condoto, El Litoral del San Juan, Istmina"', add
label define geo2_co_lbl 170027005 `"Santa Rosa de Cabal, Marsella"', add
label define geo2_co_lbl 170027006 `"Riosucio, Unguía, Acandí, Belén de Bajirá, Carmen del Darien"', add
label define geo2_co_lbl 170027007 `"Guática, Quinchía"', add
label define geo2_co_lbl 170027008 `"Balboa, La Celia, Santuario, Nóvita, San José del Palmar, Sipí"', add
label define geo2_co_lbl 170027009 `"Apía, Belén de Umbría"', add
label define geo2_co_lbl 170027010 `"Mistrató, Bagadó, El Carmen de Atrato, Lloró"', add
label define geo2_co_lbl 170027011 `"Medio Baudó, Nuquí, Bajo Baudó"', add
label define geo2_co_lbl 170027012 `"La Virginia"', add
label define geo2_co_lbl 170027013 `"Alto Baudo"', add
label define geo2_co_lbl 170027014 `"Bahía Solano, Bojaya, Juradó"', add
label define geo2_co_lbl 170041001 `"Neiva"', add
label define geo2_co_lbl 170041002 `"Palestina, Pitalito, Timaná"', add
label define geo2_co_lbl 170041003 `"Garzón"', add
label define geo2_co_lbl 170041004 `"Pital, La Plata"', add
label define geo2_co_lbl 170041005 `"Aipe, Baraya, Colombia, Tello, Villavieja"', add
label define geo2_co_lbl 170041006 `"Rivera, Palermo, Teruel"', add
label define geo2_co_lbl 170041007 `"Agrado, Altamira, Guadalupe, Suaza"', add
label define geo2_co_lbl 170041008 `"Gigante"', add
label define geo2_co_lbl 170041009 `"Campoalegre"', add
label define geo2_co_lbl 170041010 `"San Agustín"', add
label define geo2_co_lbl 170041011 `"Algeciras, Hobo"', add
label define geo2_co_lbl 170041012 `"Elías, Oporapa, Tarqui"', add
label define geo2_co_lbl 170041013 `"Nátaga, Paicol, Tesalia, Yaguará"', add
label define geo2_co_lbl 170041014 `"Acevedo"', add
label define geo2_co_lbl 170041015 `"Isnos"', add
label define geo2_co_lbl 170041016 `"La Argentina, Saladoblanco"', add
label define geo2_co_lbl 170041017 `"Iquira, Santa María"', add
label define geo2_co_lbl 170044001 `"Riohacha, Albania, Dibulla, Maicao"', add
label define geo2_co_lbl 170044003 `"Manaure, Uribia"', add
label define geo2_co_lbl 170044007 `"El Molino, La Jagua del Pilar, Urumita, Villanueva"', add
label define geo2_co_lbl 170044013 `"Barrancas, Hatonuevo"', add
label define geo2_co_lbl 170044018 `"Distracción, Fonseca"', add
label define geo2_co_lbl 170044027 `"San Juan del Cesar"', add
label define geo2_co_lbl 170047001 `"Algarrobo, Ariguaní, Cerro San Antonio, Concordia, El Piñon, El Retén, Chibolo, Aracataca, Fundación, Nueva Granada, Pedraza, Pijiño del Carmen, Pivijay, Plato, Remolino, Sabanas de San Angel, Salamina, San Zenón, Santa Ana, Santa Bárbara de Pi"', add
label define geo2_co_lbl 170047002 `"Santa Marta"', add
label define geo2_co_lbl 170047003 `"Ciénaga, Zona Bananera"', add
label define geo2_co_lbl 170047004 `"El Banco"', add
label define geo2_co_lbl 170047005 `"Guamal, San Sebastián de Buenavista"', add
label define geo2_co_lbl 170047006 `"Sitionuevo"', add
label define geo2_co_lbl 170047007 `"Puebloviejo"', add
label define geo2_co_lbl 170050001 `"Villavicencio"', add
label define geo2_co_lbl 170050002 `"Cubarral, Mapiripán, Puerto Concordia, Puerto Gaitán, Puerto Rico, San Martín, Vistahermosa"', add
label define geo2_co_lbl 170050003 `"El Castillo, El Dorado, Granada"', add
label define geo2_co_lbl 170050004 `"Acacías"', add
label define geo2_co_lbl 170050005 `"Barranca de Upía, Cumaral, El Calvario, Restrepo, San Juanito"', add
label define geo2_co_lbl 170050006 `"Mesetas, La Macarena, Uribe, Lejanías, San Juan de Arama"', add
label define geo2_co_lbl 170050007 `"Cabuyaro, Puerto López"', add
label define geo2_co_lbl 170050008 `"Castilla La Nueva, Guamal, San Carlos de Guaroa"', add
label define geo2_co_lbl 170050009 `"Fuente de Oro, Puerto Lleras"', add
label define geo2_co_lbl 170052001 `"Nariño, Pasto, Chachagüí"', add
label define geo2_co_lbl 170052002 `"Francisco Pizarro, San Andres de Tumaco"', add
label define geo2_co_lbl 170052003 `"Ipiales"', add
label define geo2_co_lbl 170052004 `"Roberto Payán, Barbacoas, La Llanada, Los Andes, Magüi"', add
label define geo2_co_lbl 170052005 `"Samaniego, Santacruz, Sapuyes"', add
label define geo2_co_lbl 170052006 `"Providencia, Túquerres"', add
label define geo2_co_lbl 170052007 `"Taminango, El Tambo, Linares, El Peñol"', add
label define geo2_co_lbl 170052008 `"Santa Bárbara, La Tola, El Charco"', add
label define geo2_co_lbl 170052009 `"Policarpa, Leiva, Cumbitara, El Rosario"', add
label define geo2_co_lbl 170052010 `"Buesaco, El Tablón de Gómez"', add
label define geo2_co_lbl 170052011 `"San Bernardo, Albán"', add
label define geo2_co_lbl 170052012 `"Mosquera, Olaya Herrera"', add
label define geo2_co_lbl 170052013 `"San Lorenzo, San Pedro de Cartago, Arboleda"', add
label define geo2_co_lbl 170052014 `"Ospina, Pupiales, Gualmatán"', add
label define geo2_co_lbl 170052015 `"Cuaspud, Guachucal, Aldana"', add
label define geo2_co_lbl 170052016 `"Yacuanquer, Iles, Imués, Contadero"', add
label define geo2_co_lbl 170052017 `"La Unión"', add
label define geo2_co_lbl 170052018 `"Potosí, Córdoba"', add
label define geo2_co_lbl 170052019 `"Puerres, Tangua, Funes"', add
label define geo2_co_lbl 170052020 `"San Pablo, Colón"', add
label define geo2_co_lbl 170052021 `"Sandoná"', add
label define geo2_co_lbl 170052022 `"La Cruz, Belén"', add
label define geo2_co_lbl 170052023 `"La Florida, Consaca"', add
label define geo2_co_lbl 170052024 `"Cumbal"', add
label define geo2_co_lbl 170052025 `"Ancuyá, Guaitarilla"', add
label define geo2_co_lbl 170052026 `"Ricaurte, Mallama"', add
label define geo2_co_lbl 170063001 `"Armenia, Salento"', add
label define geo2_co_lbl 170063002 `"Calarca"', add
label define geo2_co_lbl 170063003 `"Filandia, Quimbaya"', add
label define geo2_co_lbl 170063004 `"Montenegro"', add
label define geo2_co_lbl 170063005 `"La Tebaida"', add
label define geo2_co_lbl 170063006 `"Circasia"', add
label define geo2_co_lbl 170063007 `"Buenavista, Génova, Pijao, Córdoba"', add
label define geo2_co_lbl 170070001 `"Sincelejo"', add
label define geo2_co_lbl 170070002 `"Corozal, El Roble, Galeras, San Benito Abad, San Luis de Sincé"', add
label define geo2_co_lbl 170070003 `"San Marcos"', add
label define geo2_co_lbl 170070004 `"Coveñas, Palmito, Santiago de Tolú"', add
label define geo2_co_lbl 170070005 `"Guaranda, Majagual"', add
label define geo2_co_lbl 170070006 `"San Onofre"', add
label define geo2_co_lbl 170070007 `"Sampués"', add
label define geo2_co_lbl 170070008 `"Morroa, Tolú Viejo"', add
label define geo2_co_lbl 170070009 `"Los Palmitos, San Juan de Betulia"', add
label define geo2_co_lbl 170070010 `"Coloso, Chalán, Ovejas"', add
label define geo2_co_lbl 170070011 `"Buenavista, San Pedro"', add
label define geo2_co_lbl 170070012 `"Sucre"', add
label define geo2_co_lbl 170070013 `"Caimito, La Unión"', add
label define geo2_co_lbl 170073001 `"Ibagué"', add
label define geo2_co_lbl 170073002 `"Espinal"', add
label define geo2_co_lbl 170073003 `"Lérida, Líbano, Murillo"', add
label define geo2_co_lbl 170073004 `"San Antonio, Ortega, San Luis"', add
label define geo2_co_lbl 170073005 `"Chaparral, Roncesvalles"', add
label define geo2_co_lbl 170073006 `"Falan, Mariquita, Palocabildo"', add
label define geo2_co_lbl 170073007 `"Guamo, Saldaña"', add
label define geo2_co_lbl 170073008 `"Cajamarca, Rovira, Valle de San Juan"', add
label define geo2_co_lbl 170073009 `"Armero, Casabianca, Herveo, Villahermosa"', add
label define geo2_co_lbl 170073010 `"Alvarado, Anzoátegui, Coello, Piedras, Santa Isabel"', add
label define geo2_co_lbl 170073011 `"Ataco, Natagaima"', add
label define geo2_co_lbl 170073012 `"Melgar"', add
label define geo2_co_lbl 170073013 `"Carmen de Apicalá, Cunday, Icononzo, Suárez"', add
label define geo2_co_lbl 170073014 `"Fresno"', add
label define geo2_co_lbl 170073015 `"Flandes"', add
label define geo2_co_lbl 170073016 `"Coyaima"', add
label define geo2_co_lbl 170073017 `"Purificación"', add
label define geo2_co_lbl 170073018 `"Alpujarra, Dolores, Prado, Villarrica"', add
label define geo2_co_lbl 170073019 `"Planadas"', add
label define geo2_co_lbl 170073020 `"Honda"', add
label define geo2_co_lbl 170073021 `"Rioblanco"', add
label define geo2_co_lbl 170073022 `"Ambalema, Venadillo"', add
label define geo2_co_lbl 170076001 `"Cali"', add
label define geo2_co_lbl 170076002 `"Buenaventura"', add
label define geo2_co_lbl 170076003 `"Palmira"', add
label define geo2_co_lbl 170076004 `"Tuluá, Andalucía"', add
label define geo2_co_lbl 170076005 `"Cartago, Ulloa, Alcalá"', add
label define geo2_co_lbl 170076006 `"Guadalajara de Buga"', add
label define geo2_co_lbl 170076007 `"Yumbo"', add
label define geo2_co_lbl 170076008 `"Jamundí"', add
label define geo2_co_lbl 170076009 `"El Cerrito, Ginebra"', add
label define geo2_co_lbl 170076010 `"Candelaria"', add
label define geo2_co_lbl 170076011 `"Florida"', add
label define geo2_co_lbl 170076012 `"Calima, Dagua"', add
label define geo2_co_lbl 170076013 `"Pradera"', add
label define geo2_co_lbl 170076014 `"Riofrío, San Pedro, Yotoco"', add
label define geo2_co_lbl 170076015 `"Toro, Ansermanuevo, Argelia"', add
label define geo2_co_lbl 170076016 `"Sevilla"', add
label define geo2_co_lbl 170076017 `"Zarzal"', add
label define geo2_co_lbl 170076018 `"Bugalagrande, Trujillo"', add
label define geo2_co_lbl 170076019 `"La Cumbre, Restrepo, Vijes"', add
label define geo2_co_lbl 170076020 `"Roldanillo"', add
label define geo2_co_lbl 170076021 `"La Unión"', add
label define geo2_co_lbl 170076022 `"Guacarí"', add
label define geo2_co_lbl 170076023 `"Caicedonia"', add
label define geo2_co_lbl 170076024 `"La Victoria, Obando"', add
label define geo2_co_lbl 170076025 `"El Águila, El Cairo, Versalles"', add
label define geo2_co_lbl 170076026 `"Bolívar, El Dovio"', add
label define geo2_co_lbl 170081001 `"Arauca, Arauquita, Cravo Norte"', add
label define geo2_co_lbl 170081002 `"Saravena"', add
label define geo2_co_lbl 170081003 `"Fortul, Puerto Rondón, Tame"', add
label define geo2_co_lbl 170086001 `"Orito, Puerto Asís, Valle del Guamuez, San Miguel"', add
label define geo2_co_lbl 170086002 `"Mocoa, Puerto Guzmán, Leguízamo, San Francisco"', add
label define geo2_co_lbl 170086003 `"Puerto Caicedo, Villagarzón"', add
label define geo2_co_lbl 170086004 `"Colón, Santiago, Sibundoy"', add
label define geo2_co_lbl 170088001 `"Providencia, San Andrés"', add
label define geo2_co_lbl 170091001 `"Leticia, Puerto Nariño, El Encanto, La Chorrera, La Pedrera, Miriti-Paraná, Puerto Alegría, Puerto Arica, Tarapacá, Puerto Santander"', add
label define geo2_co_lbl 170094001 `"Inírida, Barranco Minas, San Felipe, Puerto Colombia, Cacahual, La Guadalupe, Puerto Carreño, La Primavera, Santa Rosalía, Cumaribo"', add
label define geo2_co_lbl 170095001 `"San José del Guaviare, Calamar"', add
label define geo2_co_lbl 170095002 `"Miraflores, Caruru, Taraira, Papunaua, Yavaraté, El Retorno, Mitú"', add
label values geo2_co geo2_co_lbl

label define metroco_lbl 00 `"Not a metropolitan area"'
label define metroco_lbl 01 `"Barranquilla"', add
label define metroco_lbl 02 `"Bogotá D.C."', add
label define metroco_lbl 03 `"Bucaramanga"', add
label define metroco_lbl 04 `"Cali"', add
label define metroco_lbl 05 `"Cartagena"', add
label define metroco_lbl 06 `"Centro occidente"', add
label define metroco_lbl 07 `"Cúcuta"', add
label define metroco_lbl 08 `"Manizales"', add
label define metroco_lbl 09 `"Medellín y Valle de Aburrá"', add
label define metroco_lbl 10 `"Santa Marta"', add
label define metroco_lbl 99 `"Unknown"', add
label values metroco metroco_lbl

label define age_lbl 000 `"Less than 1 year"'
label define age_lbl 001 `"1 year"', add
label define age_lbl 002 `"2 years"', add
label define age_lbl 003 `"3"', add
label define age_lbl 004 `"4"', add
label define age_lbl 005 `"5"', add
label define age_lbl 006 `"6"', add
label define age_lbl 007 `"7"', add
label define age_lbl 008 `"8"', add
label define age_lbl 009 `"9"', add
label define age_lbl 010 `"10"', add
label define age_lbl 011 `"11"', add
label define age_lbl 012 `"12"', add
label define age_lbl 013 `"13"', add
label define age_lbl 014 `"14"', add
label define age_lbl 015 `"15"', add
label define age_lbl 016 `"16"', add
label define age_lbl 017 `"17"', add
label define age_lbl 018 `"18"', add
label define age_lbl 019 `"19"', add
label define age_lbl 020 `"20"', add
label define age_lbl 021 `"21"', add
label define age_lbl 022 `"22"', add
label define age_lbl 023 `"23"', add
label define age_lbl 024 `"24"', add
label define age_lbl 025 `"25"', add
label define age_lbl 026 `"26"', add
label define age_lbl 027 `"27"', add
label define age_lbl 028 `"28"', add
label define age_lbl 029 `"29"', add
label define age_lbl 030 `"30"', add
label define age_lbl 031 `"31"', add
label define age_lbl 032 `"32"', add
label define age_lbl 033 `"33"', add
label define age_lbl 034 `"34"', add
label define age_lbl 035 `"35"', add
label define age_lbl 036 `"36"', add
label define age_lbl 037 `"37"', add
label define age_lbl 038 `"38"', add
label define age_lbl 039 `"39"', add
label define age_lbl 040 `"40"', add
label define age_lbl 041 `"41"', add
label define age_lbl 042 `"42"', add
label define age_lbl 043 `"43"', add
label define age_lbl 044 `"44"', add
label define age_lbl 045 `"45"', add
label define age_lbl 046 `"46"', add
label define age_lbl 047 `"47"', add
label define age_lbl 048 `"48"', add
label define age_lbl 049 `"49"', add
label define age_lbl 050 `"50"', add
label define age_lbl 051 `"51"', add
label define age_lbl 052 `"52"', add
label define age_lbl 053 `"53"', add
label define age_lbl 054 `"54"', add
label define age_lbl 055 `"55"', add
label define age_lbl 056 `"56"', add
label define age_lbl 057 `"57"', add
label define age_lbl 058 `"58"', add
label define age_lbl 059 `"59"', add
label define age_lbl 060 `"60"', add
label define age_lbl 061 `"61"', add
label define age_lbl 062 `"62"', add
label define age_lbl 063 `"63"', add
label define age_lbl 064 `"64"', add
label define age_lbl 065 `"65"', add
label define age_lbl 066 `"66"', add
label define age_lbl 067 `"67"', add
label define age_lbl 068 `"68"', add
label define age_lbl 069 `"69"', add
label define age_lbl 070 `"70"', add
label define age_lbl 071 `"71"', add
label define age_lbl 072 `"72"', add
label define age_lbl 073 `"73"', add
label define age_lbl 074 `"74"', add
label define age_lbl 075 `"75"', add
label define age_lbl 076 `"76"', add
label define age_lbl 077 `"77"', add
label define age_lbl 078 `"78"', add
label define age_lbl 079 `"79"', add
label define age_lbl 080 `"80"', add
label define age_lbl 081 `"81"', add
label define age_lbl 082 `"82"', add
label define age_lbl 083 `"83"', add
label define age_lbl 084 `"84"', add
label define age_lbl 085 `"85"', add
label define age_lbl 086 `"86"', add
label define age_lbl 087 `"87"', add
label define age_lbl 088 `"88"', add
label define age_lbl 089 `"89"', add
label define age_lbl 090 `"90"', add
label define age_lbl 091 `"91"', add
label define age_lbl 092 `"92"', add
label define age_lbl 093 `"93"', add
label define age_lbl 094 `"94"', add
label define age_lbl 095 `"95"', add
label define age_lbl 096 `"96"', add
label define age_lbl 097 `"97"', add
label define age_lbl 098 `"98"', add
label define age_lbl 099 `"99"', add
label define age_lbl 100 `"100+"', add
label define age_lbl 999 `"Not reported/missing"', add
label values age age_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label define sex_lbl 9 `"Unknown"', add
label values sex sex_lbl

label define birthyr_lbl 0000 `"NIU (not in universe)"'
label define birthyr_lbl 1628 `"1628"', add
label define birthyr_lbl 1629 `"1629"', add
label define birthyr_lbl 1630 `"1630"', add
label define birthyr_lbl 1631 `"1631"', add
label define birthyr_lbl 1634 `"1634"', add
label define birthyr_lbl 1635 `"1635"', add
label define birthyr_lbl 1636 `"1636"', add
label define birthyr_lbl 1637 `"1637"', add
label define birthyr_lbl 1638 `"1638"', add
label define birthyr_lbl 1639 `"1639"', add
label define birthyr_lbl 1640 `"1640"', add
label define birthyr_lbl 1641 `"1641"', add
label define birthyr_lbl 1642 `"1642"', add
label define birthyr_lbl 1643 `"1643"', add
label define birthyr_lbl 1644 `"1644"', add
label define birthyr_lbl 1645 `"1645"', add
label define birthyr_lbl 1646 `"1646"', add
label define birthyr_lbl 1647 `"1647"', add
label define birthyr_lbl 1648 `"1648"', add
label define birthyr_lbl 1649 `"1649"', add
label define birthyr_lbl 1650 `"1650"', add
label define birthyr_lbl 1651 `"1651"', add
label define birthyr_lbl 1652 `"1652"', add
label define birthyr_lbl 1653 `"1653"', add
label define birthyr_lbl 1654 `"1654"', add
label define birthyr_lbl 1655 `"1655"', add
label define birthyr_lbl 1656 `"1656"', add
label define birthyr_lbl 1657 `"1657"', add
label define birthyr_lbl 1658 `"1658"', add
label define birthyr_lbl 1659 `"1659"', add
label define birthyr_lbl 1660 `"1660"', add
label define birthyr_lbl 1661 `"1661"', add
label define birthyr_lbl 1662 `"1662"', add
label define birthyr_lbl 1663 `"1663"', add
label define birthyr_lbl 1664 `"1664"', add
label define birthyr_lbl 1665 `"1665"', add
label define birthyr_lbl 1666 `"1666"', add
label define birthyr_lbl 1667 `"1667"', add
label define birthyr_lbl 1668 `"1668"', add
label define birthyr_lbl 1669 `"1669"', add
label define birthyr_lbl 1670 `"1670"', add
label define birthyr_lbl 1671 `"1671"', add
label define birthyr_lbl 1672 `"1672"', add
label define birthyr_lbl 1673 `"1673"', add
label define birthyr_lbl 1674 `"1674"', add
label define birthyr_lbl 1675 `"1675"', add
label define birthyr_lbl 1676 `"1676"', add
label define birthyr_lbl 1677 `"1677"', add
label define birthyr_lbl 1678 `"1678"', add
label define birthyr_lbl 1679 `"1679"', add
label define birthyr_lbl 1680 `"1680"', add
label define birthyr_lbl 1681 `"1681"', add
label define birthyr_lbl 1682 `"1682"', add
label define birthyr_lbl 1683 `"1683"', add
label define birthyr_lbl 1684 `"1684"', add
label define birthyr_lbl 1685 `"1685"', add
label define birthyr_lbl 1686 `"1686"', add
label define birthyr_lbl 1687 `"1687"', add
label define birthyr_lbl 1688 `"1688"', add
label define birthyr_lbl 1689 `"1689"', add
label define birthyr_lbl 1690 `"1690"', add
label define birthyr_lbl 1691 `"1691"', add
label define birthyr_lbl 1692 `"1692"', add
label define birthyr_lbl 1693 `"1693"', add
label define birthyr_lbl 1694 `"1694"', add
label define birthyr_lbl 1695 `"1695"', add
label define birthyr_lbl 1696 `"1696"', add
label define birthyr_lbl 1697 `"1697"', add
label define birthyr_lbl 1698 `"1698"', add
label define birthyr_lbl 1699 `"1699"', add
label define birthyr_lbl 1700 `"1700"', add
label define birthyr_lbl 1701 `"1701"', add
label define birthyr_lbl 1702 `"1702"', add
label define birthyr_lbl 1703 `"1703"', add
label define birthyr_lbl 1704 `"1704"', add
label define birthyr_lbl 1705 `"1705"', add
label define birthyr_lbl 1706 `"1706"', add
label define birthyr_lbl 1707 `"1707"', add
label define birthyr_lbl 1708 `"1708"', add
label define birthyr_lbl 1709 `"1709"', add
label define birthyr_lbl 1710 `"1710"', add
label define birthyr_lbl 1711 `"1711"', add
label define birthyr_lbl 1712 `"1712"', add
label define birthyr_lbl 1713 `"1713"', add
label define birthyr_lbl 1714 `"1714"', add
label define birthyr_lbl 1715 `"1715"', add
label define birthyr_lbl 1716 `"1716"', add
label define birthyr_lbl 1717 `"1717"', add
label define birthyr_lbl 1718 `"1718"', add
label define birthyr_lbl 1719 `"1719"', add
label define birthyr_lbl 1720 `"1720"', add
label define birthyr_lbl 1721 `"1721"', add
label define birthyr_lbl 1722 `"1722"', add
label define birthyr_lbl 1723 `"1723"', add
label define birthyr_lbl 1724 `"1724"', add
label define birthyr_lbl 1725 `"1725"', add
label define birthyr_lbl 1726 `"1726"', add
label define birthyr_lbl 1727 `"1727"', add
label define birthyr_lbl 1728 `"1728"', add
label define birthyr_lbl 1729 `"1729"', add
label define birthyr_lbl 1730 `"1730"', add
label define birthyr_lbl 1731 `"1731"', add
label define birthyr_lbl 1732 `"1732"', add
label define birthyr_lbl 1733 `"1733"', add
label define birthyr_lbl 1734 `"1734"', add
label define birthyr_lbl 1735 `"1735"', add
label define birthyr_lbl 1736 `"1736"', add
label define birthyr_lbl 1737 `"1737"', add
label define birthyr_lbl 1738 `"1738"', add
label define birthyr_lbl 1739 `"1739"', add
label define birthyr_lbl 1740 `"1740"', add
label define birthyr_lbl 1741 `"1741"', add
label define birthyr_lbl 1742 `"1742"', add
label define birthyr_lbl 1743 `"1743"', add
label define birthyr_lbl 1744 `"1744"', add
label define birthyr_lbl 1745 `"1745"', add
label define birthyr_lbl 1746 `"1746"', add
label define birthyr_lbl 1747 `"1747"', add
label define birthyr_lbl 1748 `"1748"', add
label define birthyr_lbl 1749 `"1749"', add
label define birthyr_lbl 1750 `"1750"', add
label define birthyr_lbl 1751 `"1751"', add
label define birthyr_lbl 1752 `"1752"', add
label define birthyr_lbl 1753 `"1753"', add
label define birthyr_lbl 1754 `"1754"', add
label define birthyr_lbl 1755 `"1755"', add
label define birthyr_lbl 1756 `"1756"', add
label define birthyr_lbl 1757 `"1757"', add
label define birthyr_lbl 1758 `"1758"', add
label define birthyr_lbl 1759 `"1759"', add
label define birthyr_lbl 1760 `"1760"', add
label define birthyr_lbl 1761 `"1761"', add
label define birthyr_lbl 1762 `"1762"', add
label define birthyr_lbl 1763 `"1763"', add
label define birthyr_lbl 1764 `"1764"', add
label define birthyr_lbl 1765 `"1765"', add
label define birthyr_lbl 1766 `"1766"', add
label define birthyr_lbl 1767 `"1767"', add
label define birthyr_lbl 1768 `"1768"', add
label define birthyr_lbl 1769 `"1769"', add
label define birthyr_lbl 1770 `"1770"', add
label define birthyr_lbl 1771 `"1771"', add
label define birthyr_lbl 1772 `"1772"', add
label define birthyr_lbl 1773 `"1773"', add
label define birthyr_lbl 1774 `"1774"', add
label define birthyr_lbl 1775 `"1775"', add
label define birthyr_lbl 1776 `"1776"', add
label define birthyr_lbl 1777 `"1777"', add
label define birthyr_lbl 1778 `"1778"', add
label define birthyr_lbl 1779 `"1779"', add
label define birthyr_lbl 1780 `"1780"', add
label define birthyr_lbl 1781 `"1781"', add
label define birthyr_lbl 1782 `"1782"', add
label define birthyr_lbl 1783 `"1783"', add
label define birthyr_lbl 1784 `"1784"', add
label define birthyr_lbl 1785 `"1785"', add
label define birthyr_lbl 1786 `"1786"', add
label define birthyr_lbl 1787 `"1787"', add
label define birthyr_lbl 1788 `"1788"', add
label define birthyr_lbl 1789 `"1789"', add
label define birthyr_lbl 1790 `"1790"', add
label define birthyr_lbl 1791 `"1791"', add
label define birthyr_lbl 1792 `"1792"', add
label define birthyr_lbl 1793 `"1793"', add
label define birthyr_lbl 1794 `"1794"', add
label define birthyr_lbl 1795 `"1795"', add
label define birthyr_lbl 1796 `"1796"', add
label define birthyr_lbl 1797 `"1797"', add
label define birthyr_lbl 1798 `"1798"', add
label define birthyr_lbl 1799 `"1799"', add
label define birthyr_lbl 1800 `"1800"', add
label define birthyr_lbl 1801 `"1801"', add
label define birthyr_lbl 1802 `"1802"', add
label define birthyr_lbl 1803 `"1803"', add
label define birthyr_lbl 1804 `"1804"', add
label define birthyr_lbl 1805 `"1805"', add
label define birthyr_lbl 1806 `"1806"', add
label define birthyr_lbl 1807 `"1807"', add
label define birthyr_lbl 1808 `"1808"', add
label define birthyr_lbl 1809 `"1809"', add
label define birthyr_lbl 1810 `"1810"', add
label define birthyr_lbl 1811 `"1811"', add
label define birthyr_lbl 1812 `"1812"', add
label define birthyr_lbl 1813 `"1813"', add
label define birthyr_lbl 1814 `"1814"', add
label define birthyr_lbl 1815 `"1815"', add
label define birthyr_lbl 1816 `"1816"', add
label define birthyr_lbl 1817 `"1817"', add
label define birthyr_lbl 1818 `"1818"', add
label define birthyr_lbl 1819 `"1819"', add
label define birthyr_lbl 1820 `"1820"', add
label define birthyr_lbl 1821 `"1821"', add
label define birthyr_lbl 1822 `"1822"', add
label define birthyr_lbl 1823 `"1823"', add
label define birthyr_lbl 1824 `"1824"', add
label define birthyr_lbl 1825 `"1825"', add
label define birthyr_lbl 1826 `"1826"', add
label define birthyr_lbl 1827 `"1827"', add
label define birthyr_lbl 1828 `"1828"', add
label define birthyr_lbl 1829 `"1829"', add
label define birthyr_lbl 1830 `"1830"', add
label define birthyr_lbl 1831 `"1831"', add
label define birthyr_lbl 1832 `"1832"', add
label define birthyr_lbl 1833 `"1833"', add
label define birthyr_lbl 1834 `"1834"', add
label define birthyr_lbl 1835 `"1835"', add
label define birthyr_lbl 1836 `"1836"', add
label define birthyr_lbl 1837 `"1837"', add
label define birthyr_lbl 1838 `"1838"', add
label define birthyr_lbl 1839 `"1839"', add
label define birthyr_lbl 1840 `"1840"', add
label define birthyr_lbl 1841 `"1841"', add
label define birthyr_lbl 1842 `"1842"', add
label define birthyr_lbl 1843 `"1843"', add
label define birthyr_lbl 1844 `"1844"', add
label define birthyr_lbl 1845 `"1845"', add
label define birthyr_lbl 1846 `"1846"', add
label define birthyr_lbl 1847 `"1847"', add
label define birthyr_lbl 1848 `"1848"', add
label define birthyr_lbl 1849 `"1849"', add
label define birthyr_lbl 1850 `"1850"', add
label define birthyr_lbl 1851 `"1851"', add
label define birthyr_lbl 1852 `"1852"', add
label define birthyr_lbl 1853 `"1853"', add
label define birthyr_lbl 1854 `"1854"', add
label define birthyr_lbl 1855 `"1855"', add
label define birthyr_lbl 1856 `"1856"', add
label define birthyr_lbl 1857 `"1857"', add
label define birthyr_lbl 1858 `"1858"', add
label define birthyr_lbl 1859 `"1859"', add
label define birthyr_lbl 1860 `"1860"', add
label define birthyr_lbl 1861 `"1861"', add
label define birthyr_lbl 1862 `"1862"', add
label define birthyr_lbl 1863 `"1863"', add
label define birthyr_lbl 1864 `"1864"', add
label define birthyr_lbl 1865 `"1865"', add
label define birthyr_lbl 1866 `"1866"', add
label define birthyr_lbl 1867 `"1867"', add
label define birthyr_lbl 1868 `"1868"', add
label define birthyr_lbl 1869 `"1869"', add
label define birthyr_lbl 1870 `"1870"', add
label define birthyr_lbl 1871 `"1871"', add
label define birthyr_lbl 1872 `"1872"', add
label define birthyr_lbl 1873 `"1873"', add
label define birthyr_lbl 1874 `"1874"', add
label define birthyr_lbl 1875 `"1875"', add
label define birthyr_lbl 1876 `"1876"', add
label define birthyr_lbl 1877 `"1877"', add
label define birthyr_lbl 1878 `"1878"', add
label define birthyr_lbl 1879 `"1879"', add
label define birthyr_lbl 1880 `"1880"', add
label define birthyr_lbl 1881 `"1881"', add
label define birthyr_lbl 1882 `"1882"', add
label define birthyr_lbl 1883 `"1883"', add
label define birthyr_lbl 1884 `"1884"', add
label define birthyr_lbl 1885 `"1885"', add
label define birthyr_lbl 1886 `"1886"', add
label define birthyr_lbl 1887 `"1887"', add
label define birthyr_lbl 1888 `"1888"', add
label define birthyr_lbl 1889 `"1889"', add
label define birthyr_lbl 1890 `"1890"', add
label define birthyr_lbl 1891 `"1891"', add
label define birthyr_lbl 1892 `"1892"', add
label define birthyr_lbl 1893 `"1893"', add
label define birthyr_lbl 1894 `"1894"', add
label define birthyr_lbl 1895 `"1895"', add
label define birthyr_lbl 1896 `"1896"', add
label define birthyr_lbl 1897 `"1897"', add
label define birthyr_lbl 1898 `"1898"', add
label define birthyr_lbl 1899 `"1899"', add
label define birthyr_lbl 1900 `"1900"', add
label define birthyr_lbl 1901 `"1901"', add
label define birthyr_lbl 1902 `"1902"', add
label define birthyr_lbl 1903 `"1903"', add
label define birthyr_lbl 1904 `"1904"', add
label define birthyr_lbl 1905 `"1905"', add
label define birthyr_lbl 1906 `"1906"', add
label define birthyr_lbl 1907 `"1907"', add
label define birthyr_lbl 1908 `"1908"', add
label define birthyr_lbl 1909 `"1909"', add
label define birthyr_lbl 1910 `"1910"', add
label define birthyr_lbl 1911 `"1911"', add
label define birthyr_lbl 1912 `"1912"', add
label define birthyr_lbl 1913 `"1913"', add
label define birthyr_lbl 1914 `"1914"', add
label define birthyr_lbl 1915 `"1915"', add
label define birthyr_lbl 1916 `"1916"', add
label define birthyr_lbl 1917 `"1917"', add
label define birthyr_lbl 1918 `"1918"', add
label define birthyr_lbl 1919 `"1919"', add
label define birthyr_lbl 1920 `"1920"', add
label define birthyr_lbl 1921 `"1921"', add
label define birthyr_lbl 1922 `"1922"', add
label define birthyr_lbl 1923 `"1923"', add
label define birthyr_lbl 1924 `"1924"', add
label define birthyr_lbl 1925 `"1925"', add
label define birthyr_lbl 1926 `"1926"', add
label define birthyr_lbl 1927 `"1927"', add
label define birthyr_lbl 1928 `"1928"', add
label define birthyr_lbl 1929 `"1929"', add
label define birthyr_lbl 1930 `"1930"', add
label define birthyr_lbl 1931 `"1931"', add
label define birthyr_lbl 1932 `"1932"', add
label define birthyr_lbl 1933 `"1933"', add
label define birthyr_lbl 1934 `"1934"', add
label define birthyr_lbl 1935 `"1935"', add
label define birthyr_lbl 1936 `"1936"', add
label define birthyr_lbl 1937 `"1937"', add
label define birthyr_lbl 1938 `"1938"', add
label define birthyr_lbl 1939 `"1939"', add
label define birthyr_lbl 1940 `"1940"', add
label define birthyr_lbl 1941 `"1941"', add
label define birthyr_lbl 1942 `"1942"', add
label define birthyr_lbl 1943 `"1943"', add
label define birthyr_lbl 1944 `"1944"', add
label define birthyr_lbl 1945 `"1945"', add
label define birthyr_lbl 1946 `"1946"', add
label define birthyr_lbl 1947 `"1947"', add
label define birthyr_lbl 1948 `"1948"', add
label define birthyr_lbl 1949 `"1949"', add
label define birthyr_lbl 1950 `"1950"', add
label define birthyr_lbl 1951 `"1951"', add
label define birthyr_lbl 1952 `"1952"', add
label define birthyr_lbl 1953 `"1953"', add
label define birthyr_lbl 1954 `"1954"', add
label define birthyr_lbl 1955 `"1955"', add
label define birthyr_lbl 1956 `"1956"', add
label define birthyr_lbl 1957 `"1957"', add
label define birthyr_lbl 1958 `"1958"', add
label define birthyr_lbl 1959 `"1959"', add
label define birthyr_lbl 1960 `"1960"', add
label define birthyr_lbl 1961 `"1961"', add
label define birthyr_lbl 1962 `"1962"', add
label define birthyr_lbl 1963 `"1963"', add
label define birthyr_lbl 1964 `"1964"', add
label define birthyr_lbl 1965 `"1965"', add
label define birthyr_lbl 1966 `"1966"', add
label define birthyr_lbl 1967 `"1967"', add
label define birthyr_lbl 1968 `"1968"', add
label define birthyr_lbl 1969 `"1969"', add
label define birthyr_lbl 1970 `"1970"', add
label define birthyr_lbl 1971 `"1971"', add
label define birthyr_lbl 1972 `"1972"', add
label define birthyr_lbl 1973 `"1973"', add
label define birthyr_lbl 1974 `"1974"', add
label define birthyr_lbl 1975 `"1975"', add
label define birthyr_lbl 1976 `"1976"', add
label define birthyr_lbl 1977 `"1977"', add
label define birthyr_lbl 1978 `"1978"', add
label define birthyr_lbl 1979 `"1979"', add
label define birthyr_lbl 1980 `"1980"', add
label define birthyr_lbl 1981 `"1981"', add
label define birthyr_lbl 1982 `"1982"', add
label define birthyr_lbl 1983 `"1983"', add
label define birthyr_lbl 1984 `"1984"', add
label define birthyr_lbl 1985 `"1985"', add
label define birthyr_lbl 1986 `"1986"', add
label define birthyr_lbl 1987 `"1987"', add
label define birthyr_lbl 1988 `"1988"', add
label define birthyr_lbl 1989 `"1989"', add
label define birthyr_lbl 1990 `"1990"', add
label define birthyr_lbl 1991 `"1991"', add
label define birthyr_lbl 1992 `"1992"', add
label define birthyr_lbl 1993 `"1993"', add
label define birthyr_lbl 1994 `"1994"', add
label define birthyr_lbl 1995 `"1995"', add
label define birthyr_lbl 1996 `"1996"', add
label define birthyr_lbl 1997 `"1997"', add
label define birthyr_lbl 1998 `"1998"', add
label define birthyr_lbl 1999 `"1999"', add
label define birthyr_lbl 2000 `"2000"', add
label define birthyr_lbl 2001 `"2001"', add
label define birthyr_lbl 2002 `"2002"', add
label define birthyr_lbl 2003 `"2003"', add
label define birthyr_lbl 2004 `"2004"', add
label define birthyr_lbl 2005 `"2005"', add
label define birthyr_lbl 2006 `"2006"', add
label define birthyr_lbl 2007 `"2007"', add
label define birthyr_lbl 2008 `"2008"', add
label define birthyr_lbl 2009 `"2009"', add
label define birthyr_lbl 2010 `"2010"', add
label define birthyr_lbl 2011 `"2011"', add
label define birthyr_lbl 2012 `"2012"', add
label define birthyr_lbl 2013 `"2013"', add
label define birthyr_lbl 2014 `"2014"', add
label define birthyr_lbl 2015 `"2015"', add
label define birthyr_lbl 2016 `"2016"', add
label define birthyr_lbl 2017 `"2017"', add
label define birthyr_lbl 2018 `"2018"', add
label define birthyr_lbl 2019 `"2019"', add
label define birthyr_lbl 2020 `"2020"', add
label define birthyr_lbl 9999 `"Unknown"', add
label values birthyr birthyr_lbl

label define bplco1_lbl 01 `"Unknown"'
label define bplco1_lbl 02 `"Foreign-born"', add
label define bplco1_lbl 05 `"Antioquia"', add
label define bplco1_lbl 08 `"Atlántico"', add
label define bplco1_lbl 11 `"Bogotá"', add
label define bplco1_lbl 13 `"Bolívar"', add
label define bplco1_lbl 15 `"Boyacá"', add
label define bplco1_lbl 17 `"Caldas"', add
label define bplco1_lbl 18 `"Caquetá"', add
label define bplco1_lbl 19 `"Cauca"', add
label define bplco1_lbl 20 `"Cesar"', add
label define bplco1_lbl 23 `"Córdoba"', add
label define bplco1_lbl 25 `"Cundinamarca"', add
label define bplco1_lbl 27 `"Chocó"', add
label define bplco1_lbl 41 `"Huila"', add
label define bplco1_lbl 44 `"La Guajira"', add
label define bplco1_lbl 47 `"Magdalena"', add
label define bplco1_lbl 50 `"Meta"', add
label define bplco1_lbl 52 `"Nariño"', add
label define bplco1_lbl 54 `"Norte Santander"', add
label define bplco1_lbl 63 `"Quindio"', add
label define bplco1_lbl 66 `"Risaralda"', add
label define bplco1_lbl 68 `"Santander"', add
label define bplco1_lbl 70 `"Sucre"', add
label define bplco1_lbl 73 `"Tolima"', add
label define bplco1_lbl 76 `"Valle"', add
label define bplco1_lbl 81 `"Arauca"', add
label define bplco1_lbl 85 `"Casanare"', add
label define bplco1_lbl 86 `"Putumayo"', add
label define bplco1_lbl 88 `"San Andrés"', add
label define bplco1_lbl 91 `"Amazonas"', add
label define bplco1_lbl 94 `"Guanía"', add
label define bplco1_lbl 95 `"Guaviare"', add
label define bplco1_lbl 97 `"Vaupés"', add
label define bplco1_lbl 99 `"Vichada"', add
label values bplco1 bplco1_lbl

label define bplco2_lbl 001 `"Medellín"'
label define bplco2_lbl 002 `"Abejorral, La Unión"', add
label define bplco2_lbl 003 `"Amagá"', add
label define bplco2_lbl 004 `"Andes"', add
label define bplco2_lbl 005 `"Apartadó"', add
label define bplco2_lbl 006 `"Arboletes, San Juan de Urabá"', add
label define bplco2_lbl 007 `"Barbosa"', add
label define bplco2_lbl 008 `"Bello"', add
label define bplco2_lbl 009 `"Betania, Ciudad Bolívar"', add
label define bplco2_lbl 010 `"Caldas"', add
label define bplco2_lbl 011 `"Carepa"', add
label define bplco2_lbl 012 `"El Carmen de Viboral"', add
label define bplco2_lbl 013 `"Caucasia"', add
label define bplco2_lbl 014 `"Chigorodó"', add
label define bplco2_lbl 015 `"Concordia"', add
label define bplco2_lbl 016 `"Copacabana"', add
label define bplco2_lbl 017 `"Dabeiba, Mutatá"', add
label define bplco2_lbl 018 `"El Bagre, Nechí"', add
label define bplco2_lbl 019 `"Envigado"', add
label define bplco2_lbl 020 `"Fredonia"', add
label define bplco2_lbl 021 `"Frontino, Murindó, Vigía del Fuerte"', add
label define bplco2_lbl 022 `"Girardota"', add
label define bplco2_lbl 023 `"Guarne"', add
label define bplco2_lbl 024 `"Itaguí"', add
label define bplco2_lbl 025 `"Ituango"', add
label define bplco2_lbl 026 `"La Ceja"', add
label define bplco2_lbl 027 `"La Estrella"', add
label define bplco2_lbl 028 `"Marinilla"', add
label define bplco2_lbl 029 `"Necoclí"', add
label define bplco2_lbl 030 `"Puerto Berrío"', add
label define bplco2_lbl 031 `"Rionegro"', add
label define bplco2_lbl 032 `"Sabaneta"', add
label define bplco2_lbl 033 `"San Carlos"', add
label define bplco2_lbl 034 `"San Pedro de Uraba"', add
label define bplco2_lbl 035 `"San Vicente"', add
label define bplco2_lbl 036 `"Santa Bárbara, La Pintada"', add
label define bplco2_lbl 037 `"Santa Rosa de Osos"', add
label define bplco2_lbl 038 `"El Santuario"', add
label define bplco2_lbl 039 `"Segovia"', add
label define bplco2_lbl 040 `"Sonsón"', add
label define bplco2_lbl 041 `"Turbo"', add
label define bplco2_lbl 042 `"Urrao"', add
label define bplco2_lbl 043 `"Yarumal"', add
label define bplco2_lbl 044 `"Zaragoza"', add
label define bplco2_lbl 045 `"Cáceres, Anorí"', add
label define bplco2_lbl 046 `"Tarazá, Valdivia"', add
label define bplco2_lbl 047 `"Angostura, Campamento"', add
label define bplco2_lbl 048 `"Briceño, San Andrés de Cuerquía, Toledo"', add
label define bplco2_lbl 049 `"Buriticá, Peque, Sabanalarga"', add
label define bplco2_lbl 050 `"Abriaquí, Cañasgordas, Uramita"', add
label define bplco2_lbl 051 `"Santafé de Antioquia, Giraldo, Caicedo"', add
label define bplco2_lbl 052 `"Belmira, San José de la Montaña, Liborina, Olaya"', add
label define bplco2_lbl 053 `"Ebéjico, San Jerónimo, Sopetrán"', add
label define bplco2_lbl 054 `"Anza, Betulia"', add
label define bplco2_lbl 055 `"Amalfi, Remedios, Yondó"', add
label define bplco2_lbl 056 `"Vegachí, Yalí, Yolombó"', add
label define bplco2_lbl 057 `"Carolina, Gómez Plata, Guadalupe"', add
label define bplco2_lbl 058 `"Caracolí, Maceo, San Roque"', add
label define bplco2_lbl 059 `"Puerto Nare (La Magdalena), Puerto Triunfo"', add
label define bplco2_lbl 060 `"San Francisco, San Luis"', add
label define bplco2_lbl 061 `"Argelia, Nariño"', add
label define bplco2_lbl 062 `"Cisneros, Santo Domingo, Hispania, Pueblorrico, Salgar"', add
label define bplco2_lbl 063 `"Alejandría, Concepción, San Rafael"', add
label define bplco2_lbl 064 `"Guatape, Peñol"', add
label define bplco2_lbl 065 `"Cocorná, Granada"', add
label define bplco2_lbl 066 `"Retiro, Montebello"', add
label define bplco2_lbl 067 `"Caramanta, Valparaíso"', add
label define bplco2_lbl 068 `"Jardín, Támesis"', add
label define bplco2_lbl 069 `"Jericó, Tarso"', add
label define bplco2_lbl 070 `"Titiribí, Venecia"', add
label define bplco2_lbl 071 `"Armenia, Heliconia, Angelópolis"', add
label define bplco2_lbl 072 `"Don Matías, Entrerrios, San Pedro"', add
label define bplco2_lbl 073 `"Barranquilla"', add
label define bplco2_lbl 074 `"Baranoa"', add
label define bplco2_lbl 075 `"Campo de la Cruz"', add
label define bplco2_lbl 076 `"Malambo"', add
label define bplco2_lbl 077 `"Puerto Colombia"', add
label define bplco2_lbl 078 `"Sabanalarga"', add
label define bplco2_lbl 079 `"Santo Tomás"', add
label define bplco2_lbl 080 `"Soledad"', add
label define bplco2_lbl 081 `"Galapa, Tubará"', add
label define bplco2_lbl 082 `"Usiacurí, Juan de Acosta, Piojó"', add
label define bplco2_lbl 083 `"Polonuevo, Sabanagrande"', add
label define bplco2_lbl 084 `"Palmar de Varela, Ponedera"', add
label define bplco2_lbl 085 `"Candelaria, Manatí"', add
label define bplco2_lbl 086 `"Santa Lucía, Suán"', add
label define bplco2_lbl 087 `"Luruaco, Repelón"', add
label define bplco2_lbl 088 `"Bogotá, D.C."', add
label define bplco2_lbl 089 `"Cartagena"', add
label define bplco2_lbl 090 `"Achí, Montecristo, San Jacinto del Cauca"', add
label define bplco2_lbl 091 `"Arjona"', add
label define bplco2_lbl 092 `"Calamar, El Guamo"', add
label define bplco2_lbl 093 `"El Carmen de Bolívar"', add
label define bplco2_lbl 094 `"Magangué"', add
label define bplco2_lbl 095 `"María La Baja"', add
label define bplco2_lbl 096 `"Mompós"', add
label define bplco2_lbl 097 `"Morales, Arenal"', add
label define bplco2_lbl 098 `"Pinillos, Tiquisio"', add
label define bplco2_lbl 099 `"Río Viejo, Regidor"', add
label define bplco2_lbl 100 `"San Jacinto"', add
label define bplco2_lbl 101 `"San Juan Nepomuceno"', add
label define bplco2_lbl 102 `"San Martín de Loba, El Peñón, Hatillo de Loba"', add
label define bplco2_lbl 103 `"San Pablo, Cantagallo, Simití"', add
label define bplco2_lbl 104 `"Santa Rosa del Sur"', add
label define bplco2_lbl 105 `"Talaigua Nuevo, Cicuco"', add
label define bplco2_lbl 106 `"Turbaco, Turbaná"', add
label define bplco2_lbl 107 `"Santa Catalina, Clemencia, Santa Rosa"', add
label define bplco2_lbl 108 `"San Estanislao, Villanueva"', add
label define bplco2_lbl 109 `"Mahates, Arroyohondo, Soplaviento, San Cristóbal"', add
label define bplco2_lbl 110 `"Córdoba, Zambrano"', add
label define bplco2_lbl 111 `"Barranco de Loba, Altos del Rosario, Margarita, San Fernando"', add
label define bplco2_lbl 112 `"Tunja"', add
label define bplco2_lbl 113 `"Chiquinquirá"', add
label define bplco2_lbl 114 `"Duitama"', add
label define bplco2_lbl 115 `"Moniquirá"', add
label define bplco2_lbl 116 `"Paipa"', add
label define bplco2_lbl 117 `"Puerto Boyacá"', add
label define bplco2_lbl 118 `"Sogamoso"', add
label define bplco2_lbl 119 `"Chiscas, Cubará, Güicán"', add
label define bplco2_lbl 120 `"El Cocuy, El Espino, Guacamayas, Panqueba, San Mateo"', add
label define bplco2_lbl 121 `"Covarachía, Soatá, Tipacoque"', add
label define bplco2_lbl 122 `"Boavita, La Uvita, Jericó"', add
label define bplco2_lbl 123 `"Chita, Socotá"', add
label define bplco2_lbl 124 `"Sativanorte, Sativasur, Susacón, Belén, Tutazá"', add
label define bplco2_lbl 125 `"Paz de Río, Socha, Tasco"', add
label define bplco2_lbl 126 `"Aquitania, Labranzagrande, Pajarito, Paya, Pisba"', add
label define bplco2_lbl 127 `"Busbanzá, Gámeza Mongua, Monguí, Tópaga, Corrales"', add
label define bplco2_lbl 128 `"Betéitiva, Cerinza, Floresta, Santa Rosa de Viterbo"', add
label define bplco2_lbl 129 `"Cuítiva, Firavitoba, Iza, Nobsa, Tibasosa"', add
label define bplco2_lbl 130 `"Pesca, Tota, Zetaquirá"', add
label define bplco2_lbl 131 `"Cómbita, Oicatá, Sotaquirá"', add
label define bplco2_lbl 132 `"Chivatá, Toca, Tuta"', add
label define bplco2_lbl 133 `"Siachoque, Soracá, Ciénega, Rondón, Viracachá"', add
label define bplco2_lbl 134 `"Berbeo, Campohermoso, Miraflores, Páez, San Eduardo"', add
label define bplco2_lbl 135 `"Chivor, Guayatá, San Luis de Gaceno, Santa María"', add
label define bplco2_lbl 136 `"Almeida, Garagoa, Macanal"', add
label define bplco2_lbl 137 `"Guateque, Somondoco, Sutatenza, Tenza"', add
label define bplco2_lbl 138 `"Chinavita, La Capilla, Pachavita, Umbita"', add
label define bplco2_lbl 139 `"Boyacá, Jenesano, Nuevo Colón, Ramiriquí, Tibaná"', add
label define bplco2_lbl 140 `"Ventaquemada, Turmequé"', add
label define bplco2_lbl 141 `"Cucaita, Chíquiza, Motavita, Samacá, Sora, Ráquira"', add
label define bplco2_lbl 142 `"Arcabuco, Gachantivá, Villa de Leyva, Sáchica, Santa Sofía"', add
label define bplco2_lbl 143 `"Chitaraque, San José de Pare, Santana, Togüí"', add
label define bplco2_lbl 144 `"Saboyá, San Miguel de Sema, Sutamarchán, Tinjacá"', add
label define bplco2_lbl 145 `"Buenavista, Caldas, Coper, Maripí, Muzo"', add
label define bplco2_lbl 146 `"Briceño, Pauna, San Pablo de Borbur, Tununguá"', add
label define bplco2_lbl 147 `"La Victoria, Otanche, Quípama"', add
label define bplco2_lbl 148 `"Manizales"', add
label define bplco2_lbl 149 `"Aguadas"', add
label define bplco2_lbl 150 `"Anserma"', add
label define bplco2_lbl 151 `"Chinchiná"', add
label define bplco2_lbl 152 `"La Dorada"', add
label define bplco2_lbl 153 `"Manzanares"', add
label define bplco2_lbl 154 `"Neira"', add
label define bplco2_lbl 155 `"Palestina"', add
label define bplco2_lbl 156 `"Pensilvania"', add
label define bplco2_lbl 157 `"Riosucio"', add
label define bplco2_lbl 158 `"Marulanda, Salamina"', add
label define bplco2_lbl 159 `"Samaná, Norcasia"', add
label define bplco2_lbl 160 `"Marmato, Supía"', add
label define bplco2_lbl 161 `"Villamaría"', add
label define bplco2_lbl 162 `"Marquetalia, Victoria"', add
label define bplco2_lbl 163 `"La Merced, Pácora"', add
label define bplco2_lbl 164 `"Filadelfia, Aranzazu"', add
label define bplco2_lbl 165 `"Belalcázar, Risaralda, San José, Viterbo"', add
label define bplco2_lbl 166 `"Florencia"', add
label define bplco2_lbl 167 `"Cartagena del Chairá, El Doncello"', add
label define bplco2_lbl 168 `"Puerto Rico"', add
label define bplco2_lbl 169 `"San Vicente del Caguán"', add
label define bplco2_lbl 170 `"Valparaíso, Solita"', add
label define bplco2_lbl 171 `"Curillo, San José del Fragua"', add
label define bplco2_lbl 172 `"Albania, Belén de los Andaquies, Morelia"', add
label define bplco2_lbl 173 `"Solano, Milán"', add
label define bplco2_lbl 174 `"El Paujíl, La Montañita"', add
label define bplco2_lbl 175 `"Popayán"', add
label define bplco2_lbl 176 `"Bolívar, Sucre"', add
label define bplco2_lbl 177 `"Cajibío"', add
label define bplco2_lbl 178 `"Caldono"', add
label define bplco2_lbl 179 `"Padilla, Caloto"', add
label define bplco2_lbl 180 `"El Tambo"', add
label define bplco2_lbl 181 `"Guapi"', add
label define bplco2_lbl 182 `"Almaguer, La Vega"', add
label define bplco2_lbl 183 `"Morales"', add
label define bplco2_lbl 184 `"Páez"', add
label define bplco2_lbl 185 `"Patía"', add
label define bplco2_lbl 186 `"Piendamó"', add
label define bplco2_lbl 187 `"Puerto Tejada"', add
label define bplco2_lbl 188 `"Santander de Quilichao, Villa Rica"', add
label define bplco2_lbl 189 `"Silvia"', add
label define bplco2_lbl 190 `"Suárez"', add
label define bplco2_lbl 191 `"Timbío"', add
label define bplco2_lbl 192 `"Timbiquí"', add
label define bplco2_lbl 193 `"López, Buenos Aires"', add
label define bplco2_lbl 194 `"Corinto, Miranda"', add
label define bplco2_lbl 195 `"Toribío, Jambaló"', add
label define bplco2_lbl 196 `"Puracé, Inzá, Totoró"', add
label define bplco2_lbl 197 `"La Sierra, Rosas, Sotará"', add
label define bplco2_lbl 198 `"Argelia, Balboa"', add
label define bplco2_lbl 199 `"Florencia, Mercaderes"', add
label define bplco2_lbl 200 `"San Sebastián, Santa Rosa, Piamonte"', add
label define bplco2_lbl 201 `"Valledupar, Pueblo Bello"', add
label define bplco2_lbl 202 `"Aguachica"', add
label define bplco2_lbl 203 `"Agustín Codazzi"', add
label define bplco2_lbl 204 `"Bosconia"', add
label define bplco2_lbl 205 `"Chimichagua"', add
label define bplco2_lbl 206 `"Chiriguaná"', add
label define bplco2_lbl 207 `"Curumaní"', add
label define bplco2_lbl 208 `"El Copey"', add
label define bplco2_lbl 209 `"Becerril, La Jagua de Ibiric"', add
label define bplco2_lbl 210 `"Manaure, La Paz, San Diego"', add
label define bplco2_lbl 211 `"Astrea, El Paso"', add
label define bplco2_lbl 212 `"Pailitas, Tamalameque"', add
label define bplco2_lbl 213 `"Gamarra, La Gloria, Pelaya"', add
label define bplco2_lbl 214 `"González, Río de Oro"', add
label define bplco2_lbl 215 `"San Alberto, San Martín"', add
label define bplco2_lbl 216 `"Montería"', add
label define bplco2_lbl 217 `"Ayapel"', add
label define bplco2_lbl 218 `"Cereté"', add
label define bplco2_lbl 219 `"Chinú"', add
label define bplco2_lbl 220 `"Ciénaga de Oro"', add
label define bplco2_lbl 221 `"Lorica, Cotorra"', add
label define bplco2_lbl 222 `"Montelíbano, La Apartada, Puerto Libertador"', add
label define bplco2_lbl 223 `"Planeta Rica"', add
label define bplco2_lbl 224 `"Buenavista, Pueblo Nuevo, San Carlos"', add
label define bplco2_lbl 225 `"Sahagún"', add
label define bplco2_lbl 226 `"San Andrés de Sotavento"', add
label define bplco2_lbl 227 `"San Bernardo del Viento"', add
label define bplco2_lbl 228 `"San Pelayo"', add
label define bplco2_lbl 229 `"Tierralta"', add
label define bplco2_lbl 230 `"Valencia"', add
label define bplco2_lbl 231 `"Canalete, Los Córdobas"', add
label define bplco2_lbl 232 `"Moñitos, Puerto Escondido"', add
label define bplco2_lbl 233 `"Purísima, San Antero"', add
label define bplco2_lbl 234 `"Chimá, Momil"', add
label define bplco2_lbl 235 `"Cajicá"', add
label define bplco2_lbl 236 `"Chía"', add
label define bplco2_lbl 237 `"Facatativá"', add
label define bplco2_lbl 238 `"Funza"', add
label define bplco2_lbl 239 `"Fusagasugá"', add
label define bplco2_lbl 240 `"Girardot"', add
label define bplco2_lbl 241 `"Guaduas"', add
label define bplco2_lbl 242 `"Madrid"', add
label define bplco2_lbl 243 `"Mosquera"', add
label define bplco2_lbl 244 `"Pacho"', add
label define bplco2_lbl 245 `"Sibate"', add
label define bplco2_lbl 246 `"Soacha, Granada"', add
label define bplco2_lbl 247 `"Ubaté"', add
label define bplco2_lbl 248 `"Villeta"', add
label define bplco2_lbl 249 `"Zipaquirá"', add
label define bplco2_lbl 250 `"Yacopí, Puerto Salgar"', add
label define bplco2_lbl 251 `"Caparrapí, Utica"', add
label define bplco2_lbl 252 `"La Palma, La Peña"', add
label define bplco2_lbl 253 `"El Peñón, Paime, San Cayetano, Topaipí, Villagomez"', add
label define bplco2_lbl 254 `"Carmen de Carupa, Simijaca, Susa"', add
label define bplco2_lbl 255 `"Fúquene, Guachetá, Lenguazaque"', add
label define bplco2_lbl 256 `"Manta, Tibirita, Villapinzón"', add
label define bplco2_lbl 257 `"Chocontá, Machetá"', add
label define bplco2_lbl 258 `"Suesca, Cucunubá, Sutatausa"', add
label define bplco2_lbl 259 `"Cogua, Nemocón, Tausa"', add
label define bplco2_lbl 260 `"Guatavita, Sesquilé, Gachancipá"', add
label define bplco2_lbl 261 `"Choachí, Fómeque"', add
label define bplco2_lbl 262 `"Gachetá, Gama, Junín"', add
label define bplco2_lbl 263 `"Guasca, La Calera"', add
label define bplco2_lbl 264 `"Sopó, Tocancipá"', add
label define bplco2_lbl 265 `"Caqueza, Chipaque, Ubaque"', add
label define bplco2_lbl 266 `"Fosca, Guayabetal, Quetame, Une, Gutiérrez"', add
label define bplco2_lbl 267 `"Nimaima, Quebradanegra, Vergara"', add
label define bplco2_lbl 268 `"La Vega, San Francisco, Supatá"', add
label define bplco2_lbl 269 `"Tabio, Subachoque, El Rosal"', add
label define bplco2_lbl 270 `"Cota, Tenjo"', add
label define bplco2_lbl 271 `"Guayabal de Síquima, Albán, Sasaima, Nocaima"', add
label define bplco2_lbl 272 `"Bituima, Chaguaní, Quipile, Vianí"', add
label define bplco2_lbl 273 `"Beltrán, Guataquí, Pulí, Jerusalén, San Juan de Rio Seco, Anapoima, La Mesa, Nariño"', add
label define bplco2_lbl 274 `"Anolaima, Cachipay"', add
label define bplco2_lbl 275 `"Bojacá, Zipacón, Tena, San Antonio del Tequendama"', add
label define bplco2_lbl 276 `"Tocaima, Apulo"', add
label define bplco2_lbl 277 `"Silvania, Tibacuy, Viotá, El Colegio"', add
label define bplco2_lbl 278 `"Arbeláez, Pasca"', add
label define bplco2_lbl 279 `"Cabrera, Venecia, San Bernardo, Pandi"', add
label define bplco2_lbl 280 `"Agua de Dios, Ricaurte, Nilo"', add
label define bplco2_lbl 281 `"Gachalá, Paratebueno, Ubalá, Medina"', add
label define bplco2_lbl 282 `"Quibdó, Atrato, Medio Atrato, Río Quito"', add
label define bplco2_lbl 283 `"Bajo Baudó, Medio Baudó"', add
label define bplco2_lbl 285 `"Itsmina, El Cantón del San Pablo, Medio San Juan, Unión Panamericana"', add
label define bplco2_lbl 286 `"Riosucio, Carmen del Darien, Belén de Bajirá"', add
label define bplco2_lbl 287 `"Tadó, Cértegui, Río Iro"', add
label define bplco2_lbl 288 `"Nuquí, Alto Baudó"', add
label define bplco2_lbl 289 `"Bagadó, El Carmen de Atrato, Lloró"', add
label define bplco2_lbl 290 `"Condoto, Novita"', add
label define bplco2_lbl 291 `"El Litoral del San Juan, San José del Palmar, Sipí"', add
label define bplco2_lbl 292 `"Acandí, Unguía"', add
label define bplco2_lbl 293 `"Bahía Solano, Bojayá, Juradó"', add
label define bplco2_lbl 294 `"Neiva"', add
label define bplco2_lbl 295 `"Campoalegre"', add
label define bplco2_lbl 296 `"Garzón"', add
label define bplco2_lbl 297 `"La Plata"', add
label define bplco2_lbl 298 `"Pitalito"', add
label define bplco2_lbl 299 `"San Agustín"', add
label define bplco2_lbl 300 `"Baraya, Colombia, Villavieja"', add
label define bplco2_lbl 301 `"Aipe, Tello"', add
label define bplco2_lbl 302 `"Palermo, Santa María"', add
label define bplco2_lbl 303 `"Algeciras, Rivera"', add
label define bplco2_lbl 304 `"Hobo, Iquira, Yaguará, Teruel"', add
label define bplco2_lbl 305 `"Gigante, Nataga, Tesalia"', add
label define bplco2_lbl 306 `"Agrado, Altamira, Pital, Paicol"', add
label define bplco2_lbl 307 `"La Argentina, Tarqui"', add
label define bplco2_lbl 308 `"Suaza, Timaná, Guadalupe"', add
label define bplco2_lbl 309 `"Elías, Isnos, Oporapa, Saladoblanco"', add
label define bplco2_lbl 310 `"Acevedo, Palestina"', add
label define bplco2_lbl 311 `"Riohacha, Dibulla"', add
label define bplco2_lbl 312 `"Barrancas, Hatonuevo"', add
label define bplco2_lbl 313 `"Fonseca, Distracción"', add
label define bplco2_lbl 314 `"Maicao, Albania"', add
label define bplco2_lbl 315 `"Manaure"', add
label define bplco2_lbl 316 `"San Juan del Cesar"', add
label define bplco2_lbl 317 `"Uribia"', add
label define bplco2_lbl 318 `"El Molino, Urumita, La Jagua del Pilar, Villanueva"', add
label define bplco2_lbl 319 `"Santa Marta"', add
label define bplco2_lbl 320 `"Aracataca, El Retén"', add
label define bplco2_lbl 321 `"Ariguaní"', add
label define bplco2_lbl 322 `"Ciénaga, Zona Bananera"', add
label define bplco2_lbl 323 `"El Banco"', add
label define bplco2_lbl 324 `"Fundación, Algarrobo"', add
label define bplco2_lbl 325 `"Pivijay"', add
label define bplco2_lbl 326 `"Plato, Nueva Granada, Sabanas de San Angel, Santa Bárbara de Pinto"', add
label define bplco2_lbl 327 `"San Zenón, Santa Ana, Pijiño del Carmen"', add
label define bplco2_lbl 328 `"Puebloviejo, Sitionuevo"', add
label define bplco2_lbl 329 `"El Piñón, Zapayán, Remolino, Salamina"', add
label define bplco2_lbl 330 `"Cerro San Antonio, Pedraza, Concordia"', add
label define bplco2_lbl 331 `"Chivolo, Tenerife"', add
label define bplco2_lbl 332 `"Guamal, San Sebastián de Buenavista"', add
label define bplco2_lbl 333 `"Villavicencio"', add
label define bplco2_lbl 334 `"Acacias"', add
label define bplco2_lbl 335 `"Granada"', add
label define bplco2_lbl 336 `"Puerto López"', add
label define bplco2_lbl 337 `"Mesetas, La Macarena, La Uribe"', add
label define bplco2_lbl 338 `"Puerto Rico, Vista Hermosa"', add
label define bplco2_lbl 339 `"Mapiripán, Puerto Concordia, Puerto Lleras"', add
label define bplco2_lbl 340 `"Puerto Gaitán, San Martín"', add
label define bplco2_lbl 341 `"Barranca de Upia, Cabuyaro, Cumaral, El Calvario, Restrepo, San Juanito"', add
label define bplco2_lbl 342 `"Fuente de Oro, Lejanías, San Juan de Arama"', add
label define bplco2_lbl 343 `"Castilla la Nueva, San Luis de Cubarral, El Castillo, El Dorado, Guamal, San Carlos de Guaroa"', add
label define bplco2_lbl 344 `"Pasto, Nariño"', add
label define bplco2_lbl 345 `"Barbacoas"', add
label define bplco2_lbl 346 `"Cumbal"', add
label define bplco2_lbl 347 `"El Tambo, El Peñol"', add
label define bplco2_lbl 348 `"Guaitarilla"', add
label define bplco2_lbl 349 `"Ipiales"', add
label define bplco2_lbl 350 `"La Unión"', add
label define bplco2_lbl 351 `"La Tola, Olaya Herrera"', add
label define bplco2_lbl 352 `"Samaniego"', add
label define bplco2_lbl 353 `"Sandoná"', add
label define bplco2_lbl 354 `"Tumaco"', add
label define bplco2_lbl 355 `"Túquerres"', add
label define bplco2_lbl 356 `"Mosquera, Maguí, Francisco Pizarro, Roberto Payán"', add
label define bplco2_lbl 357 `"El Charco, Santa Bárbara"', add
label define bplco2_lbl 358 `"El Rosario, Leiva"', add
label define bplco2_lbl 359 `"Cumbitara, Policarpa, Los Andes"', add
label define bplco2_lbl 360 `"La Llanada, Linares"', add
label define bplco2_lbl 361 `"Mallama, Ricaurte"', add
label define bplco2_lbl 362 `"Sapuyés, Providencia, Santacruz"', add
label define bplco2_lbl 363 `"Aldana, Guachucal, Cuaspud"', add
label define bplco2_lbl 364 `"Contadero, Pupiales, Gualmatán"', add
label define bplco2_lbl 365 `"Iles, Ospina, Imués"', add
label define bplco2_lbl 366 `"Tangua, Yacuanquer"', add
label define bplco2_lbl 367 `"Ancuyá, La Florida, Consaca"', add
label define bplco2_lbl 368 `"Funes, Puerres"', add
label define bplco2_lbl 369 `"Potosí, Córdoba"', add
label define bplco2_lbl 370 `"Arboleda, Buesaco"', add
label define bplco2_lbl 371 `"San Lorenzo, San Pedro de Cartago"', add
label define bplco2_lbl 372 `"Chachagüí, Taminango"', add
label define bplco2_lbl 373 `"Belén, Colón, San Bernardo"', add
label define bplco2_lbl 374 `"La Cruz, San Pablo"', add
label define bplco2_lbl 375 `"Albán, El Tablón"', add
label define bplco2_lbl 376 `"Cúcuta, Puerto Santander"', add
label define bplco2_lbl 377 `"Abrego, La Esperanza"', add
label define bplco2_lbl 378 `"Los Patios"', add
label define bplco2_lbl 379 `"Ocaña"', add
label define bplco2_lbl 380 `"Pamplona"', add
label define bplco2_lbl 381 `"Sardinata"', add
label define bplco2_lbl 382 `"Tibú"', add
label define bplco2_lbl 383 `"Villa del Rosario"', add
label define bplco2_lbl 384 `"El Tarra, Teorama"', add
label define bplco2_lbl 385 `"Convención, El Carmen"', add
label define bplco2_lbl 386 `"Hacarí, San Calixto, La Playa"', add
label define bplco2_lbl 387 `"Cáchira"', add
label define bplco2_lbl 388 `"Bucarasica, Gramalote, Lourdes, Villa Caro"', add
label define bplco2_lbl 389 `"Arboledas, Salazar"', add
label define bplco2_lbl 390 `"El Zulia, San Cayetano, Santiago"', add
label define bplco2_lbl 391 `"Cucutilla, Pamplonita, Bochalema, Durania"', add
label define bplco2_lbl 392 `"Chinácota, Herrán, Ragonvalia"', add
label define bplco2_lbl 393 `"Labateca, Toledo"', add
label define bplco2_lbl 394 `"Cácota, Chitagá, Mutiscua, Silos"', add
label define bplco2_lbl 395 `"Armenia"', add
label define bplco2_lbl 396 `"Calarcá"', add
label define bplco2_lbl 397 `"Circasia, Salento"', add
label define bplco2_lbl 398 `"La Tebaida"', add
label define bplco2_lbl 399 `"Montenegro"', add
label define bplco2_lbl 400 `"Filandia, Quimbaya"', add
label define bplco2_lbl 401 `"Buenavista, Génova, Pijao, Córdoba"', add
label define bplco2_lbl 402 `"Pereira"', add
label define bplco2_lbl 403 `"Belén de Umbria"', add
label define bplco2_lbl 404 `"Dosquebradas"', add
label define bplco2_lbl 405 `"La Virginia, Marsella"', add
label define bplco2_lbl 406 `"Quinchía"', add
label define bplco2_lbl 407 `"Santa Rosa de Cabal"', add
label define bplco2_lbl 408 `"Guatica, Mistrato"', add
label define bplco2_lbl 409 `"Apía, Pueblo Rico"', add
label define bplco2_lbl 410 `"Balboa, Santuario, La Celia"', add
label define bplco2_lbl 411 `"Bucaramanga"', add
label define bplco2_lbl 412 `"Barrancabermeja"', add
label define bplco2_lbl 413 `"Cimitarra"', add
label define bplco2_lbl 414 `"Floridablanca"', add
label define bplco2_lbl 415 `"Girón"', add
label define bplco2_lbl 416 `"Piedecuesta"', add
label define bplco2_lbl 417 `"Puerto Wilches"', add
label define bplco2_lbl 418 `"Rionegro"', add
label define bplco2_lbl 419 `"San Gil"', add
label define bplco2_lbl 420 `"San Vicente de Chucurí"', add
label define bplco2_lbl 421 `"Socorro"', add
label define bplco2_lbl 422 `"Vélez"', add
label define bplco2_lbl 423 `"El Playón, Matanza, Suratá"', add
label define bplco2_lbl 424 `"Sabana de Torres, Lebrija"', add
label define bplco2_lbl 425 `"California, Santa Bárbara, Guaca, Cerrito, Vetas, Tona, Charta"', add
label define bplco2_lbl 426 `"Betulia, Los Santos, Zapatoca"', add
label define bplco2_lbl 427 `"Capitanejo, Carcasi, Concepción, Macaravita"', add
label define bplco2_lbl 428 `"Enciso, Molagavita, San José de Miranda, San Miguel"', add
label define bplco2_lbl 429 `"Villanueva, Aratoca, Cepitá, Jordán, Curití"', add
label define bplco2_lbl 430 `"Mogotes, Onzaga, San Joaquín"', add
label define bplco2_lbl 431 `"Barichara, Pinchote, Paramo, Palmar, Hato, Galán, Valle de San José, Ocamonte, Cabrera"', add
label define bplco2_lbl 432 `"Coromoro, Charalá, Encino, Gambita"', add
label define bplco2_lbl 433 `"El Carmen de Chucuri, Puerto Parra, Simacota"', add
label define bplco2_lbl 434 `"Aguada, Chipatá, La Paz, Santa Helena del Opón, San Benito"', add
label define bplco2_lbl 435 `"Chimá, Confines, Contratación, Guadalupe, Palmas del Socorro, El Guacamayo"', add
label define bplco2_lbl 436 `"Guapota, Oiba, Suaita"', add
label define bplco2_lbl 437 `"Bolívar, Landazuri"', add
label define bplco2_lbl 438 `"Barbosa, Güepsa"', add
label define bplco2_lbl 439 `"Albania, Guavata, Jesus María, Puente Nacional"', add
label define bplco2_lbl 440 `"Málaga, San Andres"', add
label define bplco2_lbl 441 `"El Peñón, La Belleza, Sucre, Florián"', add
label define bplco2_lbl 442 `"Sincelejo"', add
label define bplco2_lbl 443 `"Corozal, El Roble"', add
label define bplco2_lbl 444 `"Guaranda, Majagual"', add
label define bplco2_lbl 445 `"Chalán, Ovejas"', add
label define bplco2_lbl 446 `"Sampués"', add
label define bplco2_lbl 447 `"Galeras, Caimito, San Benito Abad"', add
label define bplco2_lbl 448 `"La Unión, San Marcos"', add
label define bplco2_lbl 449 `"San Onofre"', add
label define bplco2_lbl 450 `"San Luis de Sincé"', add
label define bplco2_lbl 451 `"Sucre"', add
label define bplco2_lbl 452 `"Palmito, Tolú, Coveñas"', add
label define bplco2_lbl 453 `"Toluviejo, Coloso"', add
label define bplco2_lbl 454 `"Los Palmitos, Morroa, San Juan de Betulia"', add
label define bplco2_lbl 455 `"Buenavista, San Pedro"', add
label define bplco2_lbl 456 `"Ibagué"', add
label define bplco2_lbl 457 `"Ataco"', add
label define bplco2_lbl 458 `"Chaparral"', add
label define bplco2_lbl 459 `"Coyaima"', add
label define bplco2_lbl 460 `"Espinal"', add
label define bplco2_lbl 461 `"Flandes"', add
label define bplco2_lbl 462 `"Fresno"', add
label define bplco2_lbl 463 `"Guamo"', add
label define bplco2_lbl 464 `"Honda"', add
label define bplco2_lbl 465 `"Lérida, Venadillo"', add
label define bplco2_lbl 466 `"Líbano"', add
label define bplco2_lbl 467 `"Mariquita"', add
label define bplco2_lbl 468 `"Carmen de Apicalá, Melgar"', add
label define bplco2_lbl 469 `"Natagaima"', add
label define bplco2_lbl 470 `"Ortega"', add
label define bplco2_lbl 471 `"Planadas"', add
label define bplco2_lbl 472 `"Purificación, Suárez"', add
label define bplco2_lbl 473 `"Rioblanco"', add
label define bplco2_lbl 474 `"Cajamarca"', add
label define bplco2_lbl 475 `"Rovira"', add
label define bplco2_lbl 476 `"Casabianca, Herveo, Falan, Palocabildo"', add
label define bplco2_lbl 477 `"Murillo, Villahermosa, Santa Isabel"', add
label define bplco2_lbl 478 `"Ambalema, Armero"', add
label define bplco2_lbl 479 `"Alvarado, Coello, Piedras, Anzoategui"', add
label define bplco2_lbl 480 `"Valle de San Juan, San Luis, Saldaña"', add
label define bplco2_lbl 481 `"Roncesvalles, San Antonio"', add
label define bplco2_lbl 482 `"Cunday, Villarrica, Icononzo"', add
label define bplco2_lbl 483 `"Alpujarra, Prado, Dolores"', add
label define bplco2_lbl 484 `"Cali"', add
label define bplco2_lbl 485 `"Andalucía"', add
label define bplco2_lbl 486 `"Ansermanuevo, El Aguila"', add
label define bplco2_lbl 487 `"Buenaventura"', add
label define bplco2_lbl 488 `"Buga"', add
label define bplco2_lbl 489 `"Bugalagrande"', add
label define bplco2_lbl 490 `"Caicedonia"', add
label define bplco2_lbl 491 `"Candelaria"', add
label define bplco2_lbl 492 `"Alcalá, Cartago, Ulloa"', add
label define bplco2_lbl 493 `"Dagua, La Cumbre"', add
label define bplco2_lbl 494 `"El Cerrito"', add
label define bplco2_lbl 495 `"Florida"', add
label define bplco2_lbl 496 `"Guacari, Ginebra"', add
label define bplco2_lbl 497 `"Jamundí"', add
label define bplco2_lbl 498 `"La Unión, La Victoria"', add
label define bplco2_lbl 499 `"Palmira"', add
label define bplco2_lbl 500 `"Pradera"', add
label define bplco2_lbl 501 `"Roldanillo"', add
label define bplco2_lbl 502 `"Sevilla"', add
label define bplco2_lbl 503 `"Tuluá"', add
label define bplco2_lbl 504 `"Yumbo"', add
label define bplco2_lbl 505 `"Zarzal"', add
label define bplco2_lbl 506 `"Argelia, Versalles, El Cairo"', add
label define bplco2_lbl 507 `"Obando, Toro"', add
label define bplco2_lbl 508 `"Bolívar, El Dovio"', add
label define bplco2_lbl 509 `"Riofrío, Trujillo"', add
label define bplco2_lbl 510 `"San Pedro, Yotoco"', add
label define bplco2_lbl 511 `"Darién (Calima), Vijes, Restrepo"', add
label define bplco2_lbl 512 `"Arauca, Cravo Norte"', add
label define bplco2_lbl 513 `"Arauquita, Fortul"', add
label define bplco2_lbl 514 `"Saravena"', add
label define bplco2_lbl 515 `"Puerto Rondón, Tame"', add
label define bplco2_lbl 516 `"Yopal"', add
label define bplco2_lbl 517 `"Hato Corozal, Paz de Ariporo"', add
label define bplco2_lbl 518 `"La Salina, Pore, Támara, Nunchía, Trinidad, Sácama"', add
label define bplco2_lbl 519 `"Aguazul, Maní, Orocué, Recetor, San Luis de Palenque"', add
label define bplco2_lbl 520 `"Chameza, Monterrey, Sabanalarga, Tauramena, Villanueva, Puerto Carreño, La Primavera, Santa Rosalia, Santa RitaSan José de Ocune, Cumbaribo"', add
label define bplco2_lbl 521 `"Mocoa"', add
label define bplco2_lbl 522 `"Orito"', add
label define bplco2_lbl 523 `"Puerto Asis"', add
label define bplco2_lbl 524 `"Valle del Guamuéz, San Miguel"', add
label define bplco2_lbl 525 `"Colón, Sibundoy, San Francisco, Santiago"', add
label define bplco2_lbl 526 `"Villagarzón, Puerto Caicedo"', add
label define bplco2_lbl 527 `"Puerto Guzmán, Puerto Leguízamo"', add
label define bplco2_lbl 528 `"San Andrés, Providencia"', add
label define bplco2_lbl 529 `"Leticia, El Encanto, La Chorrera, Puerto Arica, La Pedrera, Mirití-Paraná, Puerto Nariño, Puerto Santander, Tarapacá"', add
label define bplco2_lbl 530 `"Inírida, Barranco Mina, San Felipe, Puerto Colombia, La Guadalupe, Cacahual"', add
label define bplco2_lbl 531 `"San José del Guaviare"', add
label define bplco2_lbl 532 `"Mitú, Caruru, Pacoa, Taraira, Papunahua, Yavaraté"', add
label define bplco2_lbl 533 `"Calamar, El Retorno, Miraflores"', add
label define bplco2_lbl 990 `"Foreign-born"', add
label define bplco2_lbl 998 `"Not identified or unknown"', add
label values bplco2 bplco2_lbl

label define bplco3_lbl 1 `"Born in this municipality"'
label define bplco3_lbl 2 `"Born other municipality, same department"', add
label define bplco3_lbl 3 `"Born other department"', add
label define bplco3_lbl 4 `"Foreign-born"', add
label define bplco3_lbl 9 `"Unknown"', add
label values bplco3 bplco3_lbl

label define edattain_lbl 0 `"NIU (not in universe)"'
label define edattain_lbl 1 `"Less than primary completed"', add
label define edattain_lbl 2 `"Primary completed"', add
label define edattain_lbl 3 `"Secondary completed"', add
label define edattain_lbl 4 `"University completed"', add
label define edattain_lbl 9 `"Unknown"', add
label values edattain edattain_lbl

label define edattaind_lbl 000 `"NIU (not in universe)"'
label define edattaind_lbl 100 `"Less than primary completed (n.s.)"', add
label define edattaind_lbl 110 `"No schooling"', add
label define edattaind_lbl 120 `"Some primary completed"', add
label define edattaind_lbl 130 `"Primary (4 yrs) completed"', add
label define edattaind_lbl 211 `"Primary (5 yrs) completed"', add
label define edattaind_lbl 212 `"Primary (6 yrs) completed"', add
label define edattaind_lbl 221 `"Lower secondary general completed"', add
label define edattaind_lbl 222 `"Lower secondary technical completed"', add
label define edattaind_lbl 311 `"Secondary, general track completed"', add
label define edattaind_lbl 312 `"Some college completed"', add
label define edattaind_lbl 320 `"Secondary or post-secondary technical completed"', add
label define edattaind_lbl 321 `"Secondary, technical track completed"', add
label define edattaind_lbl 322 `"Post-secondary technical education"', add
label define edattaind_lbl 400 `"University completed"', add
label define edattaind_lbl 999 `"Unknown/missing"', add
label values edattaind edattaind_lbl

label define empstat_lbl 0 `"NIU (not in universe)"'
label define empstat_lbl 1 `"Employed"', add
label define empstat_lbl 2 `"Unemployed"', add
label define empstat_lbl 3 `"Inactive"', add
label define empstat_lbl 9 `"Unknown/missing"', add
label values empstat empstat_lbl

label define empstatd_lbl 000 `"NIU (not in universe)"'
label define empstatd_lbl 100 `"Employed, not specified"', add
label define empstatd_lbl 110 `"At work"', add
label define empstatd_lbl 111 `"At work, and 'student'"', add
label define empstatd_lbl 112 `"At work, and 'housework'"', add
label define empstatd_lbl 113 `"At work, and 'seeking work'"', add
label define empstatd_lbl 114 `"At work, and 'retired'"', add
label define empstatd_lbl 115 `"At work, and 'no work'"', add
label define empstatd_lbl 116 `"At work, and other situation"', add
label define empstatd_lbl 117 `"At work, family holding, not specified"', add
label define empstatd_lbl 118 `"At work, family holding, not agricultural"', add
label define empstatd_lbl 119 `"At work, family holding, agricultural"', add
label define empstatd_lbl 120 `"Have job, not at work in reference period"', add
label define empstatd_lbl 130 `"Armed forces"', add
label define empstatd_lbl 131 `"Armed forces, at work"', add
label define empstatd_lbl 132 `"Armed forces, not at work in reference period"', add
label define empstatd_lbl 133 `"Military trainee"', add
label define empstatd_lbl 140 `"Marginally employed"', add
label define empstatd_lbl 200 `"Unemployed, not specified"', add
label define empstatd_lbl 201 `"Unemployed 6 or more months"', add
label define empstatd_lbl 202 `"Worked fewer than 6 months, permanent job"', add
label define empstatd_lbl 203 `"Worked fewer than 6 months, temporary job"', add
label define empstatd_lbl 210 `"Unemployed, experienced worker"', add
label define empstatd_lbl 220 `"Unemployed, new worker"', add
label define empstatd_lbl 230 `"No work available"', add
label define empstatd_lbl 240 `"Inactive unemployed"', add
label define empstatd_lbl 300 `"Inactive (not in labor force)"', add
label define empstatd_lbl 301 `"Unavailable jobseekers"', add
label define empstatd_lbl 302 `"Available potential jobseekers"', add
label define empstatd_lbl 310 `"Housework"', add
label define empstatd_lbl 320 `"Health reasons, unable to work, or disabled"', add
label define empstatd_lbl 321 `"Permanent disability"', add
label define empstatd_lbl 322 `"Temporary illness"', add
label define empstatd_lbl 323 `"Disabled or imprisoned"', add
label define empstatd_lbl 330 `"In school"', add
label define empstatd_lbl 340 `"Retirees and living on rent"', add
label define empstatd_lbl 341 `"Living on rents"', add
label define empstatd_lbl 342 `"Living on rents or pension"', add
label define empstatd_lbl 343 `"Retirees/pensioners"', add
label define empstatd_lbl 344 `"Retired"', add
label define empstatd_lbl 345 `"Pensioner"', add
label define empstatd_lbl 346 `"Non-retirement pension"', add
label define empstatd_lbl 347 `"Disability pension"', add
label define empstatd_lbl 348 `"Retired without benefits"', add
label define empstatd_lbl 350 `"Elderly"', add
label define empstatd_lbl 351 `"Elderly or disabled"', add
label define empstatd_lbl 360 `"Institutionalized"', add
label define empstatd_lbl 361 `"Prisoner"', add
label define empstatd_lbl 370 `"Intermittent worker"', add
label define empstatd_lbl 371 `"Not working, seasonal worker"', add
label define empstatd_lbl 372 `"Not working, occasional worker"', add
label define empstatd_lbl 380 `"Other income recipient"', add
label define empstatd_lbl 390 `"Inactive, other reasons"', add
label define empstatd_lbl 391 `"Too young to work"', add
label define empstatd_lbl 392 `"Dependent"', add
label define empstatd_lbl 999 `"Unknown/missing"', add
label values empstatd empstatd_lbl

label define labforce_lbl 1 `"No, not in the labor force"'
label define labforce_lbl 2 `"Yes, in the labor force"', add
label define labforce_lbl 8 `"Unknown"', add
label define labforce_lbl 9 `"NIU (not in universe)"', add
label values labforce labforce_lbl

label define classwk_lbl 0 `"NIU (not in universe)"'
label define classwk_lbl 1 `"Self-employed"', add
label define classwk_lbl 2 `"Wage/salary worker"', add
label define classwk_lbl 3 `"Unpaid worker"', add
label define classwk_lbl 4 `"Other"', add
label define classwk_lbl 9 `"Unknown/missing"', add
label values classwk classwk_lbl

label define classwkd_lbl 000 `"NIU (not in universe)"'
label define classwkd_lbl 100 `"Self-employed"', add
label define classwkd_lbl 101 `"Self-employed, unincorporated"', add
label define classwkd_lbl 102 `"Self-employed, incorporated"', add
label define classwkd_lbl 110 `"Employer"', add
label define classwkd_lbl 111 `"Sharecropper, employer"', add
label define classwkd_lbl 120 `"Working on own account"', add
label define classwkd_lbl 121 `"Own account, agriculture"', add
label define classwkd_lbl 122 `"Domestic worker, self-employed"', add
label define classwkd_lbl 123 `"Subsistence worker, own consumption"', add
label define classwkd_lbl 124 `"Own account, other"', add
label define classwkd_lbl 125 `"Own account, without temporary/unpaid help"', add
label define classwkd_lbl 126 `"Own account, with temporary/unpaid help"', add
label define classwkd_lbl 130 `"Member of cooperative"', add
label define classwkd_lbl 140 `"Sharecropper"', add
label define classwkd_lbl 141 `"Sharecropper, self-employed"', add
label define classwkd_lbl 142 `"Sharecropper, employee"', add
label define classwkd_lbl 150 `"Kibbutz member"', add
label define classwkd_lbl 199 `"Self-employed, not specified"', add
label define classwkd_lbl 200 `"Wage/salary worker"', add
label define classwkd_lbl 201 `"Management"', add
label define classwkd_lbl 202 `"Non-management"', add
label define classwkd_lbl 203 `"White collar (non-manual)"', add
label define classwkd_lbl 204 `"Blue collar (manual)"', add
label define classwkd_lbl 205 `"White or blue collar"', add
label define classwkd_lbl 206 `"Day laborer"', add
label define classwkd_lbl 207 `"Employee, with a permanent job"', add
label define classwkd_lbl 208 `"Employee, occasional, temporary, contract"', add
label define classwkd_lbl 209 `"Employee without legal contract"', add
label define classwkd_lbl 210 `"Wage/salary worker, private employer"', add
label define classwkd_lbl 211 `"Apprentice"', add
label define classwkd_lbl 212 `"Religious worker"', add
label define classwkd_lbl 213 `"Wage/salary worker, non-profit, NGO"', add
label define classwkd_lbl 214 `"White collar, private"', add
label define classwkd_lbl 215 `"Blue collar, private"', add
label define classwkd_lbl 216 `"Paid family worker"', add
label define classwkd_lbl 217 `"Cooperative employee"', add
label define classwkd_lbl 220 `"Wage/salary worker, government or public sector"', add
label define classwkd_lbl 221 `"Federal, government employee"', add
label define classwkd_lbl 222 `"State government employee"', add
label define classwkd_lbl 223 `"Local government employee"', add
label define classwkd_lbl 224 `"White collar, public"', add
label define classwkd_lbl 225 `"Blue collar, public"', add
label define classwkd_lbl 226 `"Public companies"', add
label define classwkd_lbl 227 `"Civil servants, local collectives"', add
label define classwkd_lbl 230 `"Domestic worker (work for private household)"', add
label define classwkd_lbl 240 `"Seasonal migrant"', add
label define classwkd_lbl 241 `"Seasonal migrant, no broker"', add
label define classwkd_lbl 242 `"Seasonal migrant, uses broker"', add
label define classwkd_lbl 250 `"Other wage and salary"', add
label define classwkd_lbl 251 `"Canal zone/commission employee"', add
label define classwkd_lbl 252 `"Government employment/training program"', add
label define classwkd_lbl 253 `"Mixed state/private enterprise/parastatal"', add
label define classwkd_lbl 254 `"Government public work program"', add
label define classwkd_lbl 255 `"State enterprise employee"', add
label define classwkd_lbl 256 `"Coordinated and continuous collaboration job"', add
label define classwkd_lbl 300 `"Unpaid worker"', add
label define classwkd_lbl 310 `"Unpaid family worker"', add
label define classwkd_lbl 320 `"Apprentice, unpaid or unspecified"', add
label define classwkd_lbl 330 `"Trainee"', add
label define classwkd_lbl 340 `"Apprentice or trainee"', add
label define classwkd_lbl 350 `"Works for others without wage"', add
label define classwkd_lbl 400 `"Other"', add
label define classwkd_lbl 999 `"Unknown/missing"', add
label values classwkd classwkd_lbl


