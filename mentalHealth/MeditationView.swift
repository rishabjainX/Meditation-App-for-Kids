//
//  MeditationView.swift
//  mentalHealth
//
//  Created by Rishab Jain on 6/26/21.
//

import SwiftUI
import AVKit

struct MeditationView: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Meditation").font(.system(size: 45)).fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                HStack {
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.blue)
                    }
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: "balloon", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
