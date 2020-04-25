//
//  CountryData.swift
//  CovidCharts
//
//  Created by Adrian Bolinger on 4/25/20.
//  Copyright © 2020 Adrian Bolinger. All rights reserved.
//

import Foundation


/// `CountryProtocol` is a protocol that facilitates uniformity between disparate APIs
///
/// Various APIs are called to retrieve COVID-19 data and there are different keys for each
/// country's API. This protocol knocks them down into common names and enables comparison
/// across various countries' response mappers.
protocol CountryProtocol {
    var infected: Int { get }
    var recovered: Int?  { get }
    var deceased: Int { get }
    var lastUpdated: Date { get }
}

enum Country: String, CaseIterable {
    case austria = "Austria"
    case belgium = "Belgium"
    case brazil = "Brazil"
    case canada = "Canada"
    case denmark = "Denmark"
    case france = "France"
    case india = "India"
    case italy = "Italy"
    case japan = "Japan"
    case netherlands = "Netherlands"
    case philippines = "Philippines"
    case poland = "Poland"
    case portugal = "Portugal"
    case singapore = "Singapore"
    case southKorea = "South Korea"
    case spain = "Spain"
    case sweden = "Sweden"
    case turkey = "Turkey"
    case unitedKingdom = "United Kingdom"
    case unitedStates = "United States"
    
    /// Returns an `NSLocalizedString` for a `Country` case.
    var localizedName: String {
        switch self {
        case .austria:
            return NSLocalizedString("Austria", comment: "Austria")
        case .belgium:
            return NSLocalizedString("Belgium", comment: "Belgium")
        case .brazil:
            return NSLocalizedString("Brazil", comment: "Brazil")
        case .canada:
            return NSLocalizedString("Canada", comment: "Canada")
        case .denmark:
            return NSLocalizedString("Denmark", comment: "Denmark")
        case .france:
            return NSLocalizedString("France", comment: "France")
        case .india:
            return NSLocalizedString("India", comment: "India")
        case .italy:
            return NSLocalizedString("Italy", comment: "Italy")
        case .japan:
            return NSLocalizedString("Japan", comment: "Italy")
        case .netherlands:
            return NSLocalizedString("Netherlands", comment: "Netherlands")
        case .philippines:
            return NSLocalizedString("Philippines", comment: "Philippines")
        case .poland:
            return NSLocalizedString("Poland", comment: "Poland")
        case .portugal:
            return NSLocalizedString("Portugal", comment: "Portugal")
        case .singapore:
            return NSLocalizedString("Singapore", comment: "Singapore")
        case .southKorea:
            return NSLocalizedString("South Korea", comment: "South Korea")
        case .spain:
            return NSLocalizedString("Spain", comment: "Spain")
        case .sweden:
            return NSLocalizedString("Sweden", comment: "Sweden")
        case .turkey:
            return NSLocalizedString("Turkey", comment: "Turkey")
        case .unitedKingdom:
            return NSLocalizedString("United Kingdom", comment: "United Kingdom")
        case .unitedStates:
            return NSLocalizedString("United States", comment: "United States")
        }
    }
    
    /// Returns an optional `URL` for a `Country`'s latest case numbers
    var latestCasesURL: URL? {
        switch self {
        case .austria:
            return URL(string: "https://api.apify.com/v2/key-value-stores/RJtyHLXtCepb4aYxB/records/LATEST?disableRedirect=true")
        case .belgium:
            return URL(string: "https://api.apify.com/v2/key-value-stores/apVM8aZ8hKZFvnKm7/records/LATEST?disableRedirect=true")
        case .brazil:
            return URL(string: "https://api.apify.com/v2/key-value-stores/TyToNta7jGKkpszMZ/records/LATEST?disableRedirect=true")
        case .canada:
            return URL(string: "https://api.apify.com/v2/key-value-stores/fabbocwKrtxSDf96h/records/LATEST?disableRedirect=true")
        case .denmark:
            return URL(string: "https://api.apify.com/v2/key-value-stores/EAlpwScH29Qa5m60g/records/LATEST?disableRedirect=true")
        case .france:
            return URL(string: "https://api.apify.com/v2/key-value-stores/ufVgKLP8ljtn3ufaU/records/LATEST?disableRedirect=true")
        case .india:
            return URL(string: "https://api.apify.com/v2/key-value-stores/toDWvRj1JpTXiM8FF/records/LATEST?disableRedirect=true")
        case .italy:
            return URL(string: "https://api.apify.com/v2/key-value-stores/UFpnR8mukiu0TSrb4/records/LATEST?disableRedirect=true")
        case .japan:
            return URL(string: "https://api.apify.com/v2/key-value-stores/YbboJrL3cgVfkV1am/records/LATEST?disableRedirect=true")
        case .netherlands:
            return URL(string: "https://api.apify.com/v2/key-value-stores/vqnEUe7VtKNMqGqFF/records/LATEST?disableRedirect=true")
        case .philippines:
            return URL(string: "https://api.apify.com/v2/key-value-stores/lFItbkoNDXKeSWBBA/records/LATEST?disableRedirect=true")
        case .poland:
            return URL(string: "https://api.apify.com/v2/key-value-stores/3Po6TV7wTht4vIEid/records/LATEST?disableRedirect=true")
        case .portugal:
            return URL(string: "https://api.apify.com/v2/key-value-stores/BXGEYTTUQzYBboEQK/records/LATEST?disableRedirect=true")
        case .singapore:
            return URL(string: "https://api.apify.com/v2/key-value-stores/yaPbKe9e5Et61bl7W/records/LATEST?disableRedirect=true")
        case .southKorea:
            return URL(string: "https://api.apify.com/v2/key-value-stores/TMFbhs7qtXpGpeaeP/records/LATEST?disableRedirect=true")
        case .spain:
            return URL(string: "https://api.apify.com/v2/key-value-stores/lluBbYoQVN65R3BGO/records/LATEST?disableRedirect=true")
        case .sweden:
            return URL(string: "https://api.apify.com/v2/key-value-stores/8mRFdwyukavRNCr42/records/LATEST?disableRedirect=true")
        case .turkey:
            return URL(string: "https://api.apify.com/v2/key-value-stores/28ljlt47S5XEd1qIi/records/LATEST?disableRedirect=true")
        case .unitedKingdom:
            return URL(string: "https://api.apify.com/v2/key-value-stores/KWLojgM5r1JmMW4b4/records/LATEST?disableRedirect=true")
        case .unitedStates:
            return URL(string: "https://api.apify.com/v2/key-value-stores/moxA3Q0aZh5LosewB/records/LATEST?disableRedirect=true")
        }
    }

    /// Returns an optional `URL` for a `Country`'s historic case numbers
    var historicCaseURL: URL? {
        switch self {
        case .austria:
            return URL(string: "https://api.apify.com/v2/datasets/EFWZ2Q5JAtC6QDSwV/items?format=json&clean=1")
        case .belgium:
            return URL(string: "https://api.apify.com/v2/datasets/DD9jrAixr0QMvQIE3/items?format=json&clean=1")
        case .brazil:
            return URL(string: "https://api.apify.com/v2/datasets/3S2T1ZBxB9zhRJTBB/items?format=json&clean=1")
        case .canada:
            return URL(string: "https://api.apify.com/v2/datasets/ji95MgtBVgGJF7XcP/items?format=json&clean=1")
        case .denmark:
            return URL(string: "https://api.apify.com/v2/datasets/Ugq8cNqnhUSjfJeHr/items?format=json&clean=1")
        case .france:
            return URL(string: "https://api.apify.com/v2/datasets/QBiS7pd57KVmFfgZM/items?format=json&clean=1")
        case .india:
            return URL(string: "https://api.apify.com/v2/datasets/58a4VXwBBF0HtxuQa/items?format=json&clean=1")
        case .italy:
            return URL(string: "https://api.apify.com/v2/datasets/CUdKmb25Z3HjkoDiN/items?format=json&clean=1")
        case .japan:
            return URL(string: "https://api.apify.com/v2/datasets/ugfJOQkPhQ0fvLYzN/items?format=json&clean=1")
        case .netherlands:
            return URL(string: "https://api.apify.com/v2/datasets/jr5ogVGnyfMZJwpnB/items?format=json&clean=1")
        case .philippines:
            return URL(string: "https://api.apify.com/v2/datasets/sFSef5gfYg3soj8mb/items?format=json&clean=1")
        case .poland:
            return URL(string: "https://api.apify.com/v2/datasets/L3VCmhMeX0KUQeJto/items?format=json&clean=1")
        case .portugal:
            return URL(string: "https://api.apify.com/v2/datasets/f1Qd4cMBzV1E0oRNc/items?format=json&clean=1")
        case .singapore:
            return URL(string: "https://api.apify.com/v2/datasets/suHgi59tSfu02VsRO/items?format=json&clean=1")
        case .southKorea:
            return URL(string: "https://api.apify.com/v2/datasets/Lc0Hoa8MgAbscJA4w/items?format=json&clean=1")
        case .spain:
            return URL(string: "https://api.apify.com/v2/datasets/hxwow9BB75z8RV3JT/items?format=json&clean=1")
        case .sweden:
            return URL(string: "https://api.apify.com/v2/datasets/Nq3XwHX262iDwsFJS/items?format=json&clean=1")
        case .turkey:
            return URL(string: "https://api.apify.com/v2/datasets/LYeOfHQwsv7FsfdGV/items?format=json&clean=1")
        case .unitedKingdom:
            return URL(string: "https://api.apify.com/v2/datasets/K1mXdufnpvr53AFk6/items?format=json&clean=1")
        case .unitedStates:
            return URL(string: "https://api.apify.com/v2/datasets/FIbyK6uHUntt2kNy3/items?format=json&clean=1")
        }
    }
    
    
}
