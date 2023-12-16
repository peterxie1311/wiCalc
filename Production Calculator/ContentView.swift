//
//  ContentView.swift
//  Production Calculator
//
//  Created by Peter Xie on 16/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var numberText = ""
    private var comPerformance: [Double]  = [16500,17000,18000,18500,19000,19500,20000,20500,21000]
    private var doubleValue: Double {
            return Double(numberText) ?? 0.0
        }
    
    
    var body: some View {
        VStack {
                    TextField("Enter numbers only (Witron Rocks!)", text: $numberText)
                        .keyboardType(.numberPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
            
                Text("Entered Double Value: \(numberText)")
                .padding()
            
            Text("Com Performance AVG.")
            HStack{
                Text("Com Performance Avg  | ")
                Text("Hours Needed")
            }
            
            
            List {
                ForEach(calc().calcPerformanceAVG(amount: doubleValue), id: \.self) { result in
                               Text(result)
                           }
                       } .padding()
           
            
            Text("Com Performance Needed")
            HStack{
                Text("Production Hours Remaning  | ")
                Text("Production Needed")
            }
            
            List{
                ForEach(calc().calcHoursAVG(amount: doubleValue), id: \.self) { result in
                               Text(result)
                           }
                
            } .padding()
            
            
                
            
            
                }
    }
}

#Preview {
    ContentView()
}
