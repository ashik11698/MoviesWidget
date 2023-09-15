//
//  Utils.swift
//  WidgetExtensionExtension
//
//  Created by Mac on 15/9/23.
//

import Foundation


extension Date {
    
    func loadDayName() -> String {
        
        let date = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat  = "EEEE" // "EE" to get short style
        let dayInWeek = dateFormatter.string(from: date as Date) // "Sunday"
        return dayInWeek
    }
    
    func getDate() -> Int {
        
        let date = Date()
        let dateFormatter = DateFormatter()
         
        dateFormatter.dateFormat = "dd"
         
        let result = dateFormatter.string(from: date)
        
        return Int(result)!
        
    }
    
}
