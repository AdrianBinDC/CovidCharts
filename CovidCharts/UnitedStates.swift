//
//  UnitedStates.swift
//  CovidCharts
//
//  Created by Adrian Bolinger on 4/26/20.
//  Copyright © 2020 Adrian Bolinger. All rights reserved.
//

import Foundation

// MARK: - USLatest
struct USLatest: Codable {
    let totalCases: Int
    let totalDeaths: Int
    let casesByState: [CasesByState]
    let casesByDays: [CasesByDay]
    let sourceURL: String
    let lastUpdatedAtSource: String
    let lastUpdatedAtApify: String
    let readMe: String

    enum CodingKeys: String, CodingKey {
        case totalCases
        case totalDeaths
        case casesByState
        case casesByDays
        case sourceURL = "sourceUrl"
        case lastUpdatedAtSource, lastUpdatedAtApify, readMe
    }
}

// MARK: - CasesByDay
struct CasesByDay: Codable {
    let date: String
    let value: Int
}

// MARK: - CasesByState
struct CasesByState: Codable {
    let name: String
    let range: Range
    let casesReported: Int
    let communityTransmission: CommunityTransmission
}

enum Range: String, Codable, CaseIterable {
    case none = "None"
    case from1to100 = "1 to 100"
    case from101to1_000 = "101 to 1000"
    case from1_001to5_000 = "1001 to 5000"
    case from5_001to10_000 = "5001 to 10000"
    case over10_001 = "10001 or more"
}

enum CommunityTransmission: String, Codable, CaseIterable {
    case nA = "N/A"
    case undetermined = "Undetermined"
    case yesDefinedAreas = "Yes, defined area(s)"
    case yesWidespread = "Yes, widespread"
}

// MARK: - LatestReportingProtocol
extension USLatest: LatestReportingProtocol {
    var totalInfected: Int {
        totalCases
    }
    
    var totalRecovered: Int? {
        nil
    }
    
    var dataLastUpdated: Date? {
        lastUpdatedAtApify.iso8601Date
    }
    
    var regionalDataAvailable: Bool {
        true
    }
    
    var regionalCases: [RegionalCaseData]? {
        guard !casesByState.isEmpty else { return nil }
        
        return casesByState.map {
            RegionalCaseData(regionName: $0.name,
                             caseCount: $0.casesReported,
                             recoveredCount: nil,
                          deaths: nil) }
    }
}
