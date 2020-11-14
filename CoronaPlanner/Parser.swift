//
//  Parser.swift
//  CoronaPlanner
//
//  Created by Octavian Custura on 14/11/2020.
//

import Foundation
import SwiftSoup

class Parser {
    let country: Country
    init(name: String) {
        country = Country(name: name)
    }
    
    public func ParseMAE() -> String {
        let html = try! String(contentsOf: URL(string: country.getMaeUrl())!, encoding: .utf8)
        do {
            let doc: Document = try SwiftSoup.parseBodyFragment(html)
            let elem: Elements = try doc.getElementsByClass("art")
            var toReturn: String = ""
            for x in try elem.select("p, ul, h1, h2, h3, h4, h5") {
                toReturn += try x.text() + "\n\n"
            }
            return toReturn
        } catch {
            print("Error")
            return ""
        }
    }
    
    public func ParseWorld() -> String{
        let html = try! String(contentsOf: URL(string: country.getWorldURL())!, encoding: .utf8)
        do {
            let countryLink = country.getWorldURL()
            let doc: Document = try SwiftSoup.parseBodyFragment(html)
            var toReturn: String = try doc.title()
            let index =  toReturn.firstIndex(of: ":")
            toReturn = String(toReturn.suffix(from: index!))
            toReturn.remove(at: String.Index(encodedOffset: 0))
            let delitmiter = " "
            var tokens = toReturn.components(separatedBy: delitmiter)
            var realToReturn = tokens[1] + " " + tokens[2] + "\n" + tokens[4] + " " + tokens[5] + "\n"
            let tableDocument: Document = try SwiftSoup.parseBodyFragment(try! String(contentsOf: URL(string: "https://www.worldometers.info/coronavirus/#countries")!, encoding: .utf8))
            var population = ""
            var populationLong:Double = 0
            let casesLong = Double(tokens[1].replacingOccurrences(of: ",", with: ""))
            let deathsLong = Double(tokens[4].replacingOccurrences(of: ",", with: ""))
            
            let tableElement = try tableDocument.getElementById("main_table_countries_today")!.select("tbody")
            var tests = ""
            for tableEntry in tableElement {
                let columns = try tableEntry.select("tr")
                for entryRow in columns {
                    let a = try entryRow.select("a").first()
                    if (a != nil) {
                        guard let link = try a?.attr("href") else { return "" }
                        if countryLink.contains(link) {
                            population = try entryRow.select("td")[14].text()
                            populationLong = Double(try entryRow.select("td")[14].text().replacingOccurrences(of: ",", with: "")) ?? 0
                            tests = try entryRow.select("td")[12].text()
                        }
                    }
                }
            }
            print(deathsLong)
            print(casesLong)
            print(population)
            realToReturn = "Populatie: " + population + "\nCazuri: " + tokens[1] + "\nTeste: " + tests + "\n\n"
            realToReturn += "Decese la mia de cazuri: " + String(Double( (deathsLong ?? 0) / (casesLong ?? 1)) * 1000)
            realToReturn += "\nCazuri la mia de locuitori: " + String(Double((casesLong ?? 0) / populationLong)  * 1000) + "\n"
            let arr = toReturn.split(separator: "-")
            return realToReturn
        } catch {
            print("Error")
        }
        return ""

    }
}
