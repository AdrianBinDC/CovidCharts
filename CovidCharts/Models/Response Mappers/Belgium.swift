//
//  Belgium.swift
//  CovidCharts
//
//  Created by Adrian Bolinger on 4/25/20.
//  Copyright © 2020 Adrian Bolinger. All rights reserved.
//

import Foundation

// MARK: - BelgiumLatest
struct BelgiumLatest: Codable {
    let infected: Int
    let tested: Int
    let recovered: Int?
    let deaths: Int
    let totalInToHospital: Int
    let totalHospitalized: Int
    let newlyOutOfHospital: Int
    let country: String
    let historyData, sourceURL: String
    let lastUpdatedAtApify: String
    let lastUpdatedAtSource: String
    let readMe: String

    enum CodingKeys: String, CodingKey {
        case infected, tested, recovered, deaths, totalInToHospital, totalHospitalized, newlyOutOfHospital, country, historyData
        case sourceURL = "sourceUrl"
        case lastUpdatedAtApify, lastUpdatedAtSource, readMe
    }
}

// MARK: - LatestReportingProtocol
extension BelgiumLatest: LatestReportingProtocol {
    var totalInfected: Int {
        infected
    }
    
    var totalRecovered: Int? {
        recovered
    }
    
    var totalDeaths: Int {
        deaths
    }
    
    var dataLastUpdated: Date? {
        lastUpdatedAtApify.iso8601Date
    }
    
    var regionalDataAvailable: Bool {
        false
    }
    var regionalCases: [RegionalCaseData]? {
        return nil
    }    
}
