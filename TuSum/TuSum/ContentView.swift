//
//  ContentView.swift
//  TuSum
//
//  Created by Berk Gozek on 22/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State  private var numberInput :   Int     = 0
    @State  public  var numberArray :   [Int]   = []
    
    @State  public  var targetInput :   Int     = 0
    @State  private var targetLock  :   Bool    = false
    @State  private var idk         :   String  = "Lock in"
    
    var body: some View {
        VStack {
            Button("Enter Number to Array"){
                numberArray.append(numberInput)
                numberInput = 0
            }
                .buttonStyle(.bordered)
            
            TextField("Enter Number", value: $numberInput, formatter: NumberFormatter())
                .multilineTextAlignment(.center)
            
            Button(idk + " Target Number"){
                
                targetLock.toggle()
                idk = targetLock ? "Unlock" : "Lock in"
            }
                .buttonStyle(.bordered)
                
            
            TextField("Enter Targer Number", value: $targetInput, formatter: NumberFormatter())
                .multilineTextAlignment(.center)
                .disabled(targetLock)
            
            
            
            
            List {
                ForEach(numberArray.sorted, id: \.self) { number in
                    Text("\(number)")
                }
            }


            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
