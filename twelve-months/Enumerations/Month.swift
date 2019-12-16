//
//  Month.swift
//  twelve-months
//
//  Created by Anton Quietzsch on 15.12.19.
//  Copyright © 2019 Anton Quietzsch. All rights reserved.
//

import Foundation

enum Month: String, Decodable, CaseIterable {
    
    case january = "January"
    case february = "February"
    case march = "March"
    case april = "April"
    case may = "Mai"
    case june = "June"
    case july = "July"
    case august = "August"
    case september = "September"
    case october = "October"
    case november = "November"
    case december = "December"
    
    static var current: Month {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        let month = dateFormatter.string(from: now)
        return Month(rawValue: month)!
    }
    
}
