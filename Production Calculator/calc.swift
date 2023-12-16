//
//  calc.swift
//  Production Calculator
//
//  Created by Peter Xie on 16/12/2023.
//

import Foundation

class calc{
    
    func calcPerformanceAVG(amount: Double) -> [String]{
        var calculations: [String] = []
        var comPerformance: [Double]  = [16500,17000,18000,18500,19000,19500,20000,20500,21000]
        
        for number in comPerformance {
            
            
            calculations.append(String(number) + " | " + String(amount/number))
        }
        
        
        return calculations
    }
    
    func calcHoursAVG(amount: Double) -> [String]{
        var calculations: [String] = []
        
        for i in 2..<21 {
            calculations.append(String(i) + " | " + String(amount/Double(i)))
        }
        
        return calculations
        
    }
    
}
