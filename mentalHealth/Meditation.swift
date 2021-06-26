//
//  Meditation.swift
//  mentalHealth
//
//  Created by Rishab Jain on 6/26/21.
//

import SwiftUI

struct Meditation: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Meditation for Kids!")
                    .font(.largeTitle)
                    .padding()
                Image("Meditating")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
        }
    }
}

struct Meditation_Previews: PreviewProvider {
    static var previews: some View {
        Meditation()
    }
}
