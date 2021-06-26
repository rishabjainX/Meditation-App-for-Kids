//
//  MeditationList.swift
//  mentalHealth
//
//  Created by Rishab Jain on 6/26/21.
//

import SwiftUI

struct MeditationList: View {
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    NavigationLink(destination: audioplayer()) {
                        Text("Balloon")
                    }
                    NavigationLink(destination: audioplayer()) {
                        Text("Outer Space")
                    }
                    NavigationLink(destination: audioplayer()) {
                        Text("Day at the Zoo")
                    }
                    NavigationLink(destination: audioplayer()) {
                        Text("Bedtime Stories (Pt. 1)")
                    }
                    NavigationLink(destination: audioplayer()) {
                        Text("Bedtime Stories (Pt. 2)")
                    }
                    NavigationLink(destination: audioplayer()) {
                        Text("Spaceship to the Moon")
                    }
                    NavigationLink(destination: audioplayer()) {
                        Text("Butterfly Body Scan")
                    }
                    NavigationLink(destination: audioplayer()) {
                        Text("Sleepy Sloth")
                    }
                }
            }
            .navigationTitle("Choose an Adventure")
        }
    }
}

struct MeditationList_Previews: PreviewProvider {
    static var previews: some View {
        MeditationList()
    }
}
