//
//  Date+Extension.swift
//  CovidCharts
//
//  Created by Adrian Bolinger on 4/25/20.
//  Copyright © 2020 Adrian Bolinger. All rights reserved.
//

import Foundation

extension String {
    var iso8601Date: Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        return dateFormatter.date(from:self)
    }
}
