//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Yuzhou Ge on 2/14/20.
//  Copyright © 2020 haodan. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
