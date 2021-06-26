//
//  Stats.swift
//  mentalHealth
//
//  Created by Rishab Jain on 6/26/21.
//

import SwiftUI

struct Stats: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Meditated for:")
                    .font(.title3)
                Text("237 minutes")
                    .padding()
                    .foregroundColor(.blue)
                    .font(.title2)
                Text("Longest Streak:")
                    .font(.title3)
                Text("7 Days")
                    .padding()
                    .foregroundColor(.red)
                    .font(.title2)
                Text("Average Duration")
                    .font(.title3)
                Text("5 minutes")
                    .padding()
                    .foregroundColor(.orange)
                    .font(.title2)
            }
            .navigationTitle("Your Stats")
        }
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}
