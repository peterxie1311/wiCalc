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
            Button("Hide Keyboard") {
                          UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                      }
                      .padding()
            
            Text("Com AVG.")
            HStack{
                Text("Com Avg |")
                Text("Hours Needed |")
                Text("Finish Time")
            }
            
            
            List {
                ForEach(calc().calcPerformanceAVG(amount: doubleValue), id: \.self) { result in
                               Text(result)
                           }
                       } .padding()
           
            
            Text("Com Needed")
            HStack{
                Text("Hours Remaning | ")
                Text("COM Needed")
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
