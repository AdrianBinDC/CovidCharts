//
//  CountryDataTests.swift
//  CovidChartsTests
//
//  Created by Adrian Bolinger on 4/25/20.
//  Copyright © 2020 Adrian Bolinger. All rights reserved.
//

@testable import CovidCharts
import XCTest

class CountryDataTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAustria() {
        let country = Country.austria
        XCTAssertEqual(country.rawValue, "Austria")
        XCTAssertEqual(country.localizedName, "Austria")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/RJtyHLXtCepb4aYxB/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/EFWZ2Q5JAtC6QDSwV/items?format=json&clean=1")
    }

    func testBelgium() {
        let country = Country.belgium
        XCTAssertEqual(country.rawValue, "Belgium")
        XCTAssertEqual(country.localizedName, "Belgium")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/apVM8aZ8hKZFvnKm7/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/DD9jrAixr0QMvQIE3/items?format=json&clean=1")
    }
    
    func testBrazil() {
        let country = Country.brazil
        XCTAssertEqual(country.rawValue, "Brazil")
        XCTAssertEqual(country.localizedName, "Brazil")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/TyToNta7jGKkpszMZ/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/3S2T1ZBxB9zhRJTBB/items?format=json&clean=1")
    }
    
    func testCanada() {
        let country = Country.canada
        XCTAssertEqual(country.rawValue, "Canada")
        XCTAssertEqual(country.localizedName, "Canada")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/fabbocwKrtxSDf96h/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/ji95MgtBVgGJF7XcP/items?format=json&clean=1")
    }
    
    func testDenmark() {
        let country = Country.denmark
        XCTAssertEqual(country.rawValue, "Denmark")
        XCTAssertEqual(country.localizedName, "Denmark")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/EAlpwScH29Qa5m60g/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/Ugq8cNqnhUSjfJeHr/items?format=json&clean=1")
    }
    
    func testFrance() {
        let country = Country.france
        XCTAssertEqual(country.rawValue, "France")
        XCTAssertEqual(country.localizedName, "France")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/ufVgKLP8ljtn3ufaU/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/QBiS7pd57KVmFfgZM/items?format=json&clean=1")
    }
    
    func testIndia() {
        let country = Country.india
        XCTAssertEqual(country.rawValue, "India")
        XCTAssertEqual(country.localizedName, "India")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/toDWvRj1JpTXiM8FF/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/58a4VXwBBF0HtxuQa/items?format=json&clean=1")
    }
    
    func testItaly() {
        let country = Country.italy
        XCTAssertEqual(country.rawValue, "Italy")
        XCTAssertEqual(country.localizedName, "Italy")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/UFpnR8mukiu0TSrb4/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/CUdKmb25Z3HjkoDiN/items?format=json&clean=1")
    }
    
    func testJapan() {
        let country = Country.japan
        XCTAssertEqual(country.rawValue, "Japan")
        XCTAssertEqual(country.localizedName, "Japan")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/YbboJrL3cgVfkV1am/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/ugfJOQkPhQ0fvLYzN/items?format=json&clean=1")
    }
    
    func testNetherlands() {
        let country = Country.netherlands
        XCTAssertEqual(country.rawValue, "Netherlands")
        XCTAssertEqual(country.localizedName, "Netherlands")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/vqnEUe7VtKNMqGqFF/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/jr5ogVGnyfMZJwpnB/items?format=json&clean=1")
    }
    
    func testPhilippines() {
        let country = Country.philippines
        XCTAssertEqual(country.rawValue, "Philippines")
        XCTAssertEqual(country.localizedName, "Philippines")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/lFItbkoNDXKeSWBBA/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/sFSef5gfYg3soj8mb/items?format=json&clean=1")
    }
    
    func testPoland() {
        let country = Country.poland
        XCTAssertEqual(country.rawValue, "Poland")
        XCTAssertEqual(country.localizedName, "Poland")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/3Po6TV7wTht4vIEid/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/L3VCmhMeX0KUQeJto/items?format=json&clean=1")
    }
    
    func testPortugal() {
        let country = Country.portugal
        XCTAssertEqual(country.rawValue, "Portugal")
        XCTAssertEqual(country.localizedName, "Portugal")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/BXGEYTTUQzYBboEQK/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/f1Qd4cMBzV1E0oRNc/items?format=json&clean=1")
    }
    
    func testSingapore() {
        let country = Country.singapore
        XCTAssertEqual(country.rawValue, "Singapore")
        XCTAssertEqual(country.localizedName, "Singapore")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/yaPbKe9e5Et61bl7W/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/suHgi59tSfu02VsRO/items?format=json&clean=1")
    }
    
    func testSouthKorea() {
        let country = Country.southKorea
        XCTAssertEqual(country.rawValue, "South Korea")
        XCTAssertEqual(country.localizedName, "South Korea")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/TMFbhs7qtXpGpeaeP/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/Lc0Hoa8MgAbscJA4w/items?format=json&clean=1")
    }
    
    func testSpain() {
        let country = Country.spain
        XCTAssertEqual(country.rawValue, "Spain")
        XCTAssertEqual(country.localizedName, "Spain")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/lluBbYoQVN65R3BGO/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/hxwow9BB75z8RV3JT/items?format=json&clean=1")
    }
    
    func testSweden() {
        let country = Country.sweden
        XCTAssertEqual(country.rawValue, "Sweden")
        XCTAssertEqual(country.localizedName, "Sweden")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/8mRFdwyukavRNCr42/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/Nq3XwHX262iDwsFJS/items?format=json&clean=1")
    }
    
    func testTurkey() {
        let country = Country.turkey
        XCTAssertEqual(country.rawValue, "Turkey")
        XCTAssertEqual(country.localizedName, "Turkey")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/28ljlt47S5XEd1qIi/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/LYeOfHQwsv7FsfdGV/items?format=json&clean=1")
    }
    
    func testUnitedKingdom() {
        let country = Country.unitedKingdom
        XCTAssertEqual(country.rawValue, "United Kingdom")
        XCTAssertEqual(country.localizedName, "United Kingdom")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/KWLojgM5r1JmMW4b4/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/K1mXdufnpvr53AFk6/items?format=json&clean=1")
    }
    
    func testUnitedStates() {
        let country = Country.unitedStates
        XCTAssertEqual(country.rawValue, "United States")
        XCTAssertEqual(country.localizedName, "United States")
        guard
            let latestCases = country.latestCasesURL?.absoluteString,
            let historicCases = country.historicCaseURL?.absoluteString else {
            XCTFail("Country should have both a latest and historic URL")
            return
        }
        XCTAssertEqual(latestCases, "https://api.apify.com/v2/key-value-stores/moxA3Q0aZh5LosewB/records/LATEST?disableRedirect=true")
        XCTAssertEqual(historicCases, "https://api.apify.com/v2/datasets/FIbyK6uHUntt2kNy3/items?format=json&clean=1")
    }
}
