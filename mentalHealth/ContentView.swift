//
//  ContentView.swift
//  mentalHealth
//
//  Created by Rishab Jain on 6/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Meditation()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            MeditationList()
                .tabItem {
                    Image(systemName: "circle")
                    Text("Meditate")
                }
            
            Stats()
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Stats")
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
