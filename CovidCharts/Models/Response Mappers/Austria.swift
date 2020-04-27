//
//  Austria.swift
//  CovidCharts
//
//  Created by Adrian Bolinger on 4/25/20.
//  Copyright © 2020 Adrian Bolinger. All rights reserved.
//

import Foundation

struct AustriaLatest: Codable {
    let infected: Int
    let infectedByRegion: [AustriaRegion]
    let deceased: Int
    let deceasedByRegion: [AustriaRegion]
    let recovered: Int
    let recoveredByRegion: [AustriaRegion]
    let tested: Int
    let testedByRegion: [AustriaRegion]
    let totalIcu: Int
    let icuByRegion: [AustriaRegion]
    let totalHospitalized: Int
    let hospitalizedByRegion: [AustriaRegion]
    let lastudpatedAtSource: String
    let lastUpdatedAtApify: String
}

struct AustriaLatestElement: Codable {
    let totalTested: Int?
    let totalCases: Int?
    let totalDeaths: Int?
    let infectedByRegion: [AustriaRegion]?
    let curedByRegion: [AustriaRegion]?
    let sourceURL: String?
    let lastUpdatedAtSource: String?
    let lastUpdatedAtApify: String?
    let readMe: String?
    let deathByRegion: [AustriaRegion]?
    let infected: Int?
    let deceased: Int?
    let deceasedByRegion: [AustriaRegion]?
    let recovered: Int?
    let tested: Int?
    let hospitalizationData: [HospitalizationData]?
    let totalIcu, totalHospitalized: Int?
    let lastudpatedAtSource: String?
    let recoveredByRegion, testedByRegion, icuByRegion, hospitalizedByRegion: [AustriaRegion]?

    enum CodingKeys: String, CodingKey {
        case totalTested, totalCases, totalDeaths, infectedByRegion, curedByRegion
        case sourceURL = "sourceUrl"
        case lastUpdatedAtSource, lastUpdatedAtApify, readMe, deathByRegion, infected, deceased, deceasedByRegion, recovered, tested, hospitalizationData, totalIcu, totalHospitalized, lastudpatedAtSource, recoveredByRegion, testedByRegion, icuByRegion, hospitalizedByRegion
    }
    
    struct HospitalizationData: Codable {
        let region: String
        let icu: Int
        let hospitalized: Int
    }
}


struct AustriaRegion: Codable {
    let name: String
    let value: Int
}


extension AustriaLatest: LatestReportingProtocol {
    var totalInfected: Int {
        infected
    }
    
    var totalRecovered: Int? {
        recovered
    }
    
    var totalDeaths: Int {
        deceased
    }
    
    var dataLastUpdated: Date? {
        lastudpatedAtSource.iso8601Date
    }
    
    var regionalDataAvailable: Bool {
        true
    }
    
    var regionalCases: [RegionalCaseData]? {
        guard !infectedByRegion.isEmpty else { return nil }
        let regionNames = infectedByRegion.map { $0.name }
        var regionalCases: [RegionalCaseData] = []
        
        regionNames.forEach { regionName in
            let regionalDataPoint = RegionalCaseData(regionName: regionName,
                                                     caseCount: infectedByRegion.first(where: { $0.name == regionName })?.value,
                                                     recoveredCount: recoveredByRegion.first(where: { $0.name == regionName })?.value,
                                                     deaths: deceasedByRegion.first(where: { $0.name == regionName })?.value)
            regionalCases.append(regionalDataPoint)
        }
        
        return regionalCases
    }
}
