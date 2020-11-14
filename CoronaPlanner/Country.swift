//
//  Country.swift
//  CoronaPlanner
//
//  Created by Octavian Custura on 14/11/2020.
//

import Foundation

struct Country: Identifiable {
    var id = UUID()
    var name: String = ""
    func getMaeUrl() -> String {
        return Countries.maeDict[name]!
    }
    
    func getWorldURL() -> String {
        return Countries.worldUrl[name]!
    }
}

class Countries {
    public static let countries: [Country] = [ Country(name: "Albania"),Country(name: "Austria"),Country(name: "Belarus"),Country(name: "Belgia"),Country(name: "Bosnia şi Herţegovina"),Country(name: "Bulgaria"),Country(name: "Cehia"),Country(name: "Cipru"),Country(name: "Croația"),Country(name: "Danemarca"),Country(name: "Confederaţia Elveţiană"),Country(name: "Estonia"),Country(name: "Federația Rusă"),Country(name: "Finlanda"),Country(name: "Franța"),Country(name: "Germania"),Country(name: "Republica Elenă"),Country(name: "Irlanda"),Country(name: "Islanda"),Country(name: "Italia"),Country(name: "Letonia"),Country(name: "Liechtenstein"),Country(name: "Lituania"),Country(name: "Luxemburg"),Country(name: "Macedonia de Nord"),Country(name: "Malta"),Country(name: "Monaco"),Country(name: "Muntenegru"),Country(name: "Norvegia"),Country(name: "Polonia"),Country(name: "Portugalia"),Country(name: "Principatul Andorra"),Country(name: "Regatul Ţărilor de Jos"),Country(name: "Regatul Unit al Marii Britanii şi al Irlandei de Nord"),Country(name: "Republica Moldova"),Country(name: "Serbia"),Country(name: "Slovacia"),Country(name: "Slovenia"),Country(name: "Spania"),Country(name: "Turcia"),Country(name: "Ucraina"),Country(name: "Ungaria"),Country(name: "Africa de Sud"),Country(name: "Algeria"),Country(name: "Angola"),Country(name: "Botswana"),Country(name: "Burkina Faso"),Country(name: "Burundi"),Country(name: "Capul Verde"),Country(name: "Coasta de Fildeș"),Country(name: "Uniunea Comorelor"),Country(name: "Congo"),Country(name: "Republica Democrată Congo"),Country(name: "Egipt"),Country(name: "Regatul ESWATINI (SWAZILAND)"),Country(name: "Etiopia"),Country(name: "Kenya"),Country(name: "Regatul Lesotho"),Country(name: "Madagascar"),Country(name: "Mali"),Country(name: "Maroc"),Country(name: "Namibia"),Country(name: "Nigeria"),Country(name: "Malawi"),Country(name: "Republica GAMBIA"),Country(name: "Republica Guineea Bissau"),Country(name: "Republica Guineea"),Country(name: "Republica Islamică Mauritania"),Country(name: "Mauritius"),Country(name: "Mozambic"),Country(name: "Republica Democrată São Tomé şi Principe"),Country(name: "Rwanda"),Country(name: "Senegal"),Country(name: "Seychelles"),Country(name: "Republica Unită Tanzania"),Country(name: "Tunisia"),Country(name: "Uganda"),Country(name: "Zambia"),Country(name: "Zimbabwe"),Country(name: "Antigua și Barbuda"),Country(name: "Argentina"),Country(name: "Bahamas"),Country(name: "Barbados"),Country(name: "Belize"),Country(name: "Bolivia"),Country(name: "Brazilia"),Country(name: "Canada"),Country(name: "Chile"),Country(name: "Columbia"),Country(name: "Costa Rica"),Country(name: "Cuba"),Country(name: "Dominica"),Country(name: "Ecuador"),Country(name: "El Salvador"),Country(name: "Grenada"),Country(name: "Guatemala"),Country(name: "Haiti"),Country(name: "Honduras"),Country(name: "Jamaica"),Country(name: "Mexic"),Country(name: "Nicaragua"),Country(name: "Panama"),Country(name: "Paraguay"),Country(name: "Peru"),Country(name: "Republica Dominicană"),Country(name: "Statele Unite ale Americii"),Country(name: "St. Kitts și Nevis"),Country(name: "St. Lucia"),Country(name: "St. Vincent și Grenadines"),Country(name: "Trinidad și Tobago"),Country(name: "Coreea de Sud"),Country(name: "Filipine"),Country(name: "Indonezia"),Country(name: "Japonia"),Country(name: "Malaysia"),Country(name: "Maldive"),Country(name: "Mongolia"),Country(name: "Myanmar"),Country(name: "Nepal"),Country(name: "Pakistan"),Country(name: "Regatul Cambodgiei"),Country(name: "Republica India"),Country(name: "Republica Populară Chineză"),Country(name: "Singapore"),Country(name: "Sri Lanka"),Country(name: "Thailanda"),Country(name: "Timorul de Est"),Country(name: "Vietnam"),Country(name: "Armenia"),Country(name: "Azerbaidjan"),Country(name: "Georgia"),Country(name: "Kazahstan"),Country(name: "Kârgâzstan"),Country(name: "Tadjikistan"),Country(name: "Turkmenistan"),Country(name: "Uzbekistan"),Country(name: "Australia"),Country(name: "Noua Zeelandă"),Country(name: "Arabia Saudită"),Country(name: "BAHRAIN"),Country(name: "Emiratele Arabe Unite"),Country(name: "Iran"),Country(name: "Israel"),Country(name: "Kuwait"),Country(name: "Liban"),Country(name: "Oman"),Country(name: "Qatar"),Country(name: "Regatul Hașemit a Iordaniei"),Country(name: "Siria") ]
    
    public static let maeDict = ["Albania":"https://www.mae.ro/node/51900","Austria":"https://www.mae.ro/node/51901","Belarus":"https://www.mae.ro/node/54038","Belgia":"https://www.mae.ro/node/51902","Bosnia şi Herţegovina":"https://www.mae.ro/node/51903","Bulgaria":"https://www.mae.ro/node/51904","Cehia":"https://www.mae.ro/node/51905","Cipru":"https://www.mae.ro/node/51906","Croația":"https://www.mae.ro/node/51907","Danemarca":"https://www.mae.ro/node/51908","Confederaţia Elveţiană":"https://www.mae.ro/node/51909","Estonia":"https://www.mae.ro/node/51910","Federația Rusă":"https://www.mae.ro/node/51985","Finlanda":"https://www.mae.ro/node/51911","Franța":"https://www.mae.ro/node/51912","Germania":"https://www.mae.ro/node/51913","Republica Elenă":"https://www.mae.ro/node/51914","Irlanda":"https://www.mae.ro/node/51915","Islanda":"https://www.mae.ro/node/51916","Italia":"https://www.mae.ro/node/51917","Letonia":"https://www.mae.ro/node/51918","Liechtenstein":"https://www.mae.ro/node/51979","Lituania":"https://www.mae.ro/node/51919","Luxemburg":"https://www.mae.ro/node/51920","Macedonia de Nord":"https://www.mae.ro/node/51921","Malta":"https://www.mae.ro/node/51947","Monaco":"https://www.mae.ro/node/53421","Muntenegru":"https://www.mae.ro/node/51922","Norvegia":"https://www.mae.ro/node/51923","Polonia":"https://www.mae.ro/node/51924","Portugalia":"https://www.mae.ro/node/51925","Principatul Andorra":"https://www.mae.ro/node/53411","Regatul Ţărilor de Jos":"https://www.mae.ro/node/51932","Regatul Unit al Marii Britanii şi al Irlandei de Nord":"https://www.mae.ro/node/51935","Republica Moldova":"https://www.mae.ro/node/51926","Serbia":"https://www.mae.ro/node/51927","Slovacia":"https://www.mae.ro/node/51928","Slovenia":"https://www.mae.ro/node/51929","Spania":"https://www.mae.ro/node/51930","Turcia":"https://www.mae.ro/node/51937","Ucraina":"https://www.mae.ro/node/51933","Ungaria":"https://www.mae.ro/node/51934","Africa de Sud":"https://www.mae.ro/node/52004","Algeria":"https://www.mae.ro/node/52064","Angola":"https://www.mae.ro/node/52142","Botswana":"https://www.mae.ro/node/52077","Burkina Faso":"https://www.mae.ro/node/53147","Burundi":"https://www.mae.ro/node/54095","Capul Verde":"https://www.mae.ro/node/52094","Coasta de Fildeș":"https://www.mae.ro/node/52095","Uniunea Comorelor":"https://www.mae.ro/node/52146","Congo":"https://www.mae.ro/node/52143","Republica Democrată Congo":"https://www.mae.ro/node/52144","Egipt":"https://www.mae.ro/node/52005","Regatul ESWATINI (SWAZILAND)":"https://www.mae.ro/node/53359","Etiopia":"https://www.mae.ro/node/52010","Kenya":"https://www.mae.ro/node/52006","Regatul Lesotho":"https://www.mae.ro/node/53360","Madagascar":"https://www.mae.ro/node/51990","Mali":"https://www.mae.ro/node/53143","Maroc":"https://www.mae.ro/node/52007","Namibia":"https://www.mae.ro/node/52078","Nigeria":"https://www.mae.ro/node/52011","Malawi":"https://www.mae.ro/node/52872","Republica GAMBIA":"https://www.mae.ro/node/53146","Republica Guineea Bissau":"https://www.mae.ro/node/53144","Republica Guineea":"https://www.mae.ro/node/53145","Republica Islamică Mauritania":"https://www.mae.ro/node/52065","Mauritius":"https://www.mae.ro/node/52108","Mozambic":"https://www.mae.ro/node/52109","Republica Democrată São Tomé şi Principe":"https://www.mae.ro/node/52145","Rwanda":"https://www.mae.ro/node/52008","Senegal":"https://www.mae.ro/node/52093","Seychelles":"https://www.mae.ro/node/52110","Republica Unită Tanzania":"https://www.mae.ro/node/53401","Tunisia":"https://www.mae.ro/node/52009","Uganda":"https://www.mae.ro/node/52105","Zambia":"https://www.mae.ro/node/52279","Zimbabwe":"https://www.mae.ro/node/52873","Antigua și Barbuda":"https://www.mae.ro/node/52021","Argentina":"https://www.mae.ro/node/52066","Bahamas":"https://www.mae.ro/node/52022","Barbados":"https://www.mae.ro/node/52023","Belize":"https://www.mae.ro/node/52024","Bolivia":"https://www.mae.ro/node/52120","Brazilia":"https://www.mae.ro/node/52025","Canada":"https://www.mae.ro/node/52076","Chile":"https://www.mae.ro/node/52026","Columbia":"https://www.mae.ro/node/52027","Costa Rica":"https://www.mae.ro/node/52028","Cuba":"https://www.mae.ro/node/52029","Dominica":"https://www.mae.ro/node/52030","Ecuador":"https://www.mae.ro/node/52119","El Salvador":"https://www.mae.ro/node/52032","Grenada":"https://www.mae.ro/node/52035","Guatemala":"https://www.mae.ro/node/52033","Haiti":"https://www.mae.ro/node/52037","Honduras":"https://www.mae.ro/node/52038","Jamaica":"https://www.mae.ro/node/52039","Mexic":"https://www.mae.ro/node/52040","Nicaragua":"https://www.mae.ro/node/52042","Panama":"https://www.mae.ro/node/52043","Paraguay":"https://www.mae.ro/node/52067","Peru":"https://www.mae.ro/node/52118","Republica Dominicană":"https://www.mae.ro/node/52044","Statele Unite ale Americii":"https://www.mae.ro/node/52075","St. Kitts și Nevis":"https://www.mae.ro/node/52045","St. Lucia":"https://www.mae.ro/node/52041","St. Vincent și Grenadines":"https://www.mae.ro/node/52046","Trinidad și Tobago":"https://www.mae.ro/node/52278","Coreea de Sud":"https://www.mae.ro/node/51993","Filipine":"https://www.mae.ro/node/53286","Indonezia":"https://www.mae.ro/node/51991","Japonia":"https://www.mae.ro/node/51994","Malaysia":"https://www.mae.ro/node/52121","Maldive":"https://www.mae.ro/node/52058","Mongolia":"https://www.mae.ro/node/52152","Myanmar":"https://www.mae.ro/node/52153","Nepal":"https://www.mae.ro/node/52388","Pakistan":"https://www.mae.ro/node/52054","Regatul Cambodgiei":"https://www.mae.ro/node/54091","Republica India":"https://www.mae.ro/node/52055","Republica Populară Chineză":"https://www.mae.ro/node/52056","Singapore":"https://www.mae.ro/node/51995","Sri Lanka":"https://www.mae.ro/node/52051","Thailanda":"https://www.mae.ro/node/52060","Timorul de Est":"https://www.mae.ro/node/52052","Vietnam":"https://www.mae.ro/node/51992","Armenia":"https://www.mae.ro/node/52087","Azerbaidjan":"https://www.mae.ro/node/52080","Georgia":"https://www.mae.ro/node/52084","Kazahstan":"https://www.mae.ro/node/52081","Kârgâzstan":"https://www.mae.ro/node/52086","Tadjikistan":"https://www.mae.ro/node/52082","Turkmenistan":"https://www.mae.ro/node/52085","Uzbekistan":"https://www.mae.ro/node/52083","Australia":"https://www.mae.ro/node/51988","Noua Zeelandă":"https://www.mae.ro/node/51987","Arabia Saudită":"https://www.mae.ro/node/52062","BAHRAIN":"https://www.mae.ro/node/53318","Emiratele Arabe Unite":"https://www.mae.ro/node/52012","Iran":"https://www.mae.ro/node/52014","Israel":"https://www.mae.ro/node/52079","Kuwait":"https://www.mae.ro/node/52092","Liban":"https://www.mae.ro/node/52018","Oman":"https://www.mae.ro/node/52016","Qatar":"https://www.mae.ro/node/52017","Regatul Hașemit a Iordaniei":"https://www.mae.ro/node/52013","Siria":"https://www.mae.ro/node/52015"]
    
    public static let worldUrl = ["Albania":"https://www.worldometers.info/coronavirus/country/albania/","Austria":"https://www.worldometers.info/coronavirus/country/austria/","Belarus":"https://www.worldometers.info/coronavirus/country/belarus/","Belgia":"https://www.worldometers.info/coronavirus/country/belgium/","Bosnia şi Herţegovina":"https://www.worldometers.info/coronavirus/country/bosnia-and-herzegovina/","Bulgaria":"https://www.worldometers.info/coronavirus/country/bulgaria/","Cehia":"https://www.worldometers.info/coronavirus/country/czech-republic/","Cipru":"https://www.worldometers.info/coronavirus/country/Cyprus/","Croația":"https://www.worldometers.info/coronavirus/country/croatia/","Danemarca":"https://www.worldometers.info/coronavirus/country/denmark/","Confederaţia Elveţiană":"https://www.worldometers.info/coronavirus/country/switzerland/","Estonia":"https://www.worldometers.info/coronavirus/country/estonia/","Federația Rusă":"https://www.worldometers.info/coronavirus/country/russia/","Finlanda":"https://www.worldometers.info/coronavirus/country/finland/","Franța":"https://www.worldometers.info/coronavirus/country/france/","Germania":"https://www.worldometers.info/coronavirus/country/germany/","Irlanda":"https://www.worldometers.info/coronavirus/country/ireland/","Islanda":"https://www.worldometers.info/coronavirus/country/iceland/","Italia":"https://www.worldometers.info/coronavirus/country/italy/","Letonia":"https://www.worldometers.info/coronavirus/country/latvia/","Liechtenstein":"https://www.worldometers.info/coronavirus/country/liechtenstein/","Lituania":"https://www.worldometers.info/coronavirus/country/lithuania/","Luxemburg":"https://www.worldometers.info/coronavirus/country/luxembourg/","Macedonia de Nord":"https://www.worldometers.info/coronavirus/country/macedonia/","Malta":"https://www.worldometers.info/coronavirus/country/malta/","Monaco":"https://www.worldometers.info/coronavirus/country/monaco/","Muntenegru":"https://www.worldometers.info/coronavirus/country/montenegro/","Norvegia":"https://www.worldometers.info/coronavirus/country/norway/","Polonia":"https://www.worldometers.info/coronavirus/country/poland/","Portugalia":"https://www.worldometers.info/coronavirus/country/portugal/","Principatul Andorra":"https://www.worldometers.info/coronavirus/country/andorra/","Regatul Ţărilor de Jos":"https://www.worldometers.info/coronavirus/country/netherlands/","Regatul Unit al Marii Britanii şi al Irlandei de Nord":"https://www.worldometers.info/coronavirus/country/uk/","Republica Moldova":"https://www.worldometers.info/coronavirus/country/moldova/","Serbia":"https://www.worldometers.info/coronavirus/country/serbia/","Slovacia":"https://www.worldometers.info/coronavirus/country/slovakia/","Slovenia":"https://www.worldometers.info/coronavirus/country/slovenia/","Spania":"https://www.worldometers.info/coronavirus/country/spain/","Turcia":"https://www.worldometers.info/coronavirus/country/turkey/","Ucraina":"https://www.worldometers.info/coronavirus/country/ukraine/","Ungaria":"https://www.worldometers.info/coronavirus/country/hungary/","Africa de Sud":"https://www.worldometers.info/coronavirus/country/south-africa/","Algeria":"https://www.worldometers.info/coronavirus/country/algeria/","Angola":"https://www.worldometers.info/coronavirus/country/angola/","Botswana":"https://www.worldometers.info/coronavirus/country/botswana/","Burkina Faso":"https://www.worldometers.info/coronavirus/country/burkina-faso/","Burundi":"https://www.worldometers.info/coronavirus/country/burundi/","Capul Verde":"https://www.worldometers.info/coronavirus/country/cabo-verde/","Coasta de Fildeș":"https://www.worldometers.info/coronavirus/country/cote-d-ivoire/","Uniunea Comorelor":"https://www.worldometers.info/coronavirus/country/comoros/","Congo":"https://www.worldometers.info/coronavirus/country/congo/","Republica Democrată Congo":"https://www.worldometers.info/coronavirus/country/congo/","Egipt":"https://www.worldometers.info/coronavirus/country/egypt/","Regatul ESWATINI (SWAZILAND)":"https://www.worldometers.info/coronavirus/country/swaziland/","Etiopia":"https://www.worldometers.info/coronavirus/country/ethiopia/","Kenya":"https://www.worldometers.info/coronavirus/country/kenya/","Regatul Lesotho":"https://www.worldometers.info/coronavirus/country/lesotho/","Madagascar":"https://www.worldometers.info/coronavirus/country/madagascar/","Mali":"https://www.worldometers.info/coronavirus/country/mali/","Maroc":"https://www.worldometers.info/coronavirus/country/morocco/","Namibia":"https://www.worldometers.info/coronavirus/country/namibia/","Nigeria":"https://www.worldometers.info/coronavirus/country/niger/","Malawi":"https://www.worldometers.info/coronavirus/country/malawi/","Republica GAMBIA":"https://www.worldometers.info/coronavirus/country/gambia/","Republica Guineea Bissau":"https://www.worldometers.info/coronavirus/country/guinea-bissau/","Republica Guineea":"https://www.worldometers.info/coronavirus/country/guinea/","Republica Islamică Mauritania":"https://www.worldometers.info/coronavirus/country/mauritania/","Mauritius":"https://www.worldometers.info/coronavirus/country/mauritius/","Mozambic":"https://www.worldometers.info/coronavirus/country/mozambique/","Republica Democrată São Tomé şi Principe":"https://www.worldometers.info/coronavirus/country/sao-tome-and-principe/","Rwanda":"https://www.worldometers.info/coronavirus/country/rwanda/","Senegal":"https://www.worldometers.info/coronavirus/country/senegal/","Seychelles":"https://www.worldometers.info/coronavirus/country/seychelles/","Republica Unită Tanzania":"https://www.worldometers.info/coronavirus/country/tanzania/","Tunisia":"https://www.worldometers.info/coronavirus/country/tunisia/","Uganda":"https://www.worldometers.info/coronavirus/country/uganda/","Zambia":"https://www.worldometers.info/coronavirus/country/zambia/","Zimbabwe":"https://www.worldometers.info/coronavirus/country/zimbabwe/","Antigua și Barbuda":"https://www.worldometers.info/coronavirus/country/antigua-and-barbuda/","Argentina":"https://www.worldometers.info/coronavirus/country/Argentina/","Bahamas":"https://www.worldometers.info/coronavirus/country/bahamas/","Barbados":"https://www.worldometers.info/coronavirus/country/barbados/","Belize":"https://www.worldometers.info/coronavirus/country/belize/","Bolivia":"https://www.worldometers.info/coronavirus/country/bolivia/","Brazilia":"https://www.worldometers.info/coronavirus/country/brazil/","Canada":"https://www.worldometers.info/coronavirus/country/canada/","Chile":"https://www.worldometers.info/coronavirus/country/chile/","Columbia":"https://www.worldometers.info/coronavirus/country/colombia/","Costa Rica":"https://www.worldometers.info/coronavirus/country/costa-rica/","Cuba":"https://www.worldometers.info/coronavirus/country/cuba/","Dominica":"https://www.worldometers.info/coronavirus/country/dominican-republic/","Ecuador":"https://www.worldometers.info/coronavirus/country/ecuador/","El Salvador":"https://www.worldometers.info/coronavirus/country/el-salvador/","Grenada":"https://www.worldometers.info/coronavirus/country/grenada/","Guatemala":"https://www.worldometers.info/coronavirus/country/guatemala/","Haiti":"https://www.worldometers.info/coronavirus/country/haiti/","Honduras":"https://www.worldometers.info/coronavirus/country/honduras/","Jamaica":"https://www.worldometers.info/coronavirus/country/jamaica/","Mexic":"https://www.worldometers.info/coronavirus/country/mexico/","Nicaragua":"https://www.worldometers.info/coronavirus/country/nicaragua/","Panama":"https://www.worldometers.info/coronavirus/country/panama/","Paraguay":"https://www.worldometers.info/coronavirus/country/paraguay/","Peru":"https://www.worldometers.info/coronavirus/country/peru/","Republica Dominicană":"https://www.worldometers.info/coronavirus/country/dominican-republic/","Statele Unite ale Americii":"https://www.worldometers.info/coronavirus/country/us/","St. Kitts și Nevis":"https://www.worldometers.info/coronavirus/country/saint-kitts-and-nevis/","St. Lucia":"https://www.worldometers.info/coronavirus/country/saint-lucia/","St. Vincent și Grenadines":"https://www.worldometers.info/coronavirus/country/saint-vincent-and-the-grenadines/","Trinidad și Tobago":"https://www.worldometers.info/coronavirus/country/trinidad-and-tobago/","Coreea de Sud":"https://www.worldometers.info/coronavirus/country/south-korea/","Filipine":"https://www.worldometers.info/coronavirus/country/philippines/","Indonezia":"https://www.worldometers.info/coronavirus/country/indonesia/","Japonia":"https://www.worldometers.info/coronavirus/country/japan/","Malaysia":"https://www.worldometers.info/coronavirus/country/malaysia/","Maldive":"https://www.worldometers.info/coronavirus/country/maldives/","Mongolia":"https://www.worldometers.info/coronavirus/country/mongolia/","Myanmar":"https://www.worldometers.info/coronavirus/country/myanmar/","Nepal":"https://www.worldometers.info/coronavirus/country/nepal/","Pakistan":"https://www.worldometers.info/coronavirus/country/pakistan/","Regatul Cambodgiei":"https://www.worldometers.info/coronavirus/country/cambodia/","Republica India":"https://www.worldometers.info/coronavirus/country/india/","Republica Populară Chineză":"https://www.worldometers.info/coronavirus/country/china/","Singapore":"https://www.worldometers.info/coronavirus/country/singapore/","Sri Lanka":"https://www.worldometers.info/coronavirus/country/sri-lanka/","Thailanda":"https://www.worldometers.info/coronavirus/country/thailand/","Timorul de Est":"https://www.worldometers.info/coronavirus/country/timor-leste/","Vietnam":"https://www.worldometers.info/coronavirus/country/viet-nam/","Armenia":"https://www.worldometers.info/coronavirus/country/armenia/","Azerbaidjan":"https://www.worldometers.info/coronavirus/country/azerbaijan/","Georgia":"https://www.worldometers.info/coronavirus/country/georgia/","Kazahstan":"https://www.worldometers.info/coronavirus/country/kazakhstan/","Kârgâzstan":"https://www.worldometers.info/coronavirus/country/kyrgyzstan/","Tadjikistan":"https://www.worldometers.info/coronavirus/country/tajikistan/","Uzbekistan":"https://www.worldometers.info/coronavirus/country/uzbekistan/","Australia":"https://www.worldometers.info/coronavirus/country/australia/","Noua Zeelandă":"https://www.worldometers.info/coronavirus/country/new-zealand/","Arabia Saudită":"https://www.worldometers.info/coronavirus/country/saudi-arabia/","BAHRAIN":"https://www.worldometers.info/coronavirus/country/bahrain/","Iran":"https://www.worldometers.info/coronavirus/country/iran/","Israel":"https://www.worldometers.info/coronavirus/country/israel/","Kuwait":"https://www.worldometers.info/coronavirus/country/kuwait/","Liban":"https://www.worldometers.info/coronavirus/country/lebanon/","Oman":"https://www.worldometers.info/coronavirus/country/oman/","Qatar":"https://www.worldometers.info/coronavirus/country/qatar/","Regatul Hașemit a Iordaniei":"https://www.worldometers.info/coronavirus/country/jordan/","Siria":"https://www.worldometers.info/coronavirus/country/syria/"]
}