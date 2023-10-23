//
//  ContentView.swift
//  TuSum
//
//  Created by Berk Gozek on 22/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State public var numberInput : Int = 0
    @State public var numberArray: [Int] = []
    var body: some View {
        VStack {
            Button("Enter Number to Array"){
                
            }
            TextField("Enter Number", value: $numberInput, formatter: NumberFormatter())
                .multilineTextAlignment(.center)
            List {
                ForEach(numberArray.sorted(), id: \.self) { number in
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
