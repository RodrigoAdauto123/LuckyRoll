//
//  ContentView.swift
//  LuckyRoll
//
//  Created by Rodrigo Adauto Ortiz on 28/04/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            
            TabView() {
                DiceView()
                    .tabItem {
                        Text("Jugar dado")
                    }
                    .tag(0)
                Text("Jugar pieda/papel")
                    .tabItem {
                        Text("Second")
                    }
                    .tag(1)
            }
        }
    }
}

#Preview {
    ContentView()
}
