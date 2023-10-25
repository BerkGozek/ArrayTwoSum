//
//  Testing.swift
//  TuSum
//
//  Created by Berk Gozek on 25/10/2023.
//

import SwiftUI

struct TestingView: View {
    
    @State public   var finalArray  : [Int]     = []
    
    var body: some View {
        //ContentView(numberArray: finalArray)
        VStack{
            HStack{
                ForEach(finalArray, id: \.self) { item in
                    ZStack{
                        Rectangle()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text(String(item))
                            .font(.caption)
                    }
                            }
            }
        }
        
        
    }
}

#Preview {
    TestingView()
}
