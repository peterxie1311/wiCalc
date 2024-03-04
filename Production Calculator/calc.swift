//
//  calc.swift
//  Production Calculator
//
//  Created by Peter Xie on 16/12/2023.
//

import Foundation

class calc{
    
    
    func time(addTime : Double) -> String{
        
    
        // Convert hours to seconds (1 hour = 3600 seconds)
        let secondsToAdd = Int(addTime * 3600)

        let currentTime = Date()

        var dateComponents = DateComponents()
        dateComponents.second = secondsToAdd

        guard let modifiedDate = Calendar.current.date(byAdding: dateComponents, to: currentTime) else {
            fatalError("Error calculating modified time")
        }

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"

        let modifiedTimeString = dateFormatter.string(from: modifiedDate)

        print("Current time: \(currentTime)")
        print("Modified time: \(modifiedTimeString)")
        return modifiedTimeString

    }
    
    func calcPerformanceAVG(amount: Double) -> [String]{
        var calculations: [String] = []
        var comPerformance: [Double]  = [16500,17000,18000,18500,19000,19500,20000,20500,21000]
        
        for number in comPerformance {
            
            
            calculations.append(String(format:"%.0f",number) + " | " + String(format:"%.2f",amount/number) + " | " + time(addTime: amount/number))
        }
        
        
        return calculations
    }
    
    func calcHoursAVG(amount: Double) -> [String]{
        var calculations: [String] = []
        
        for i in 2..<21 {
            calculations.append(String(i) + " | " + String(format:"%.0f",amount/Double(i)))
        }
        
        return calculations
        
    }
    
}
