//
//  SwitcherView.swift
//  TuSum
//
//  Created by Berk Gozek on 26/10/2023.
//

import SwiftUI

struct SwitcherView: View {
    @State private var showView1 = true

        var body: some View {
            VStack {
                if showView1 {
                    ContentView()
                } else {
                    TestingView()
                }

                Button("Start Process") {
                    showView1.toggle()
                }
            }
        }
}

#Preview {
    SwitcherView()
}