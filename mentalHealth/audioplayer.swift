//
//  audioplayer.swift
//  mentalHealth
//
//  Created by Rishab Jain on 6/26/21.
//

import SwiftUI
import AVKit

struct audioplayer: View {
    var body: some View {
        
        
        NavigationView {
        MusicPlayer()
        
    }
}

struct audioplayer_Previews: PreviewProvider {
    static var previews: some View {
        audioplayer()
    }
}
struct MusicPlayer: View {
    @State var data: Data = .init(count: 0)
    @State var title = ""
    @State var player: AVAudioPlayer!
    @State var playing = false
    @State var width: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Image(uiImage: self.data.count == 0 ? UIImage(named: "balloon")! : UIImage(data: self.data)!)
                .resizable()
                .frame(width: self.data.count == 0 ? 250 : nil, height: 150)
                .cornerRadius(15)
            
            Text("Balloon - Cosmic Kids Yoga").font(.title).padding(.top)
            
            ZStack(alignment: .leading) {
                Capsule().fill(Color.black.opacity(0.08)).frame(height: 8)
                
                Capsule().fill(Color.red).frame(width: self.width, height: 8)
            }
            .padding(.top)
            
            HStack(spacing: UIScreen.main.bounds.width / 5 - 30) {
                Button(action: {
                    
                }) {
                    Image(systemName: "backward.fill").font(.title)
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "gobackward.15").font(.title)
                }
                Button(action: {
                    
                    if self.player.isPlaying {
                        self.player.pause()
                        self.playing = false
                    } else {
                        self.player.play()
                        self.playing = true
                    }
                }) {
                    Image(systemName: self.playing ? "pause.fill" : "play.fill").font(.title)
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "goforward.15").font(.title)
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "forward.fill").font(.title)
                }
            }.padding(.top, 25)
            .foregroundColor(.black)
            
        }
        .padding()
        .onAppear {
            let url = Bundle.main.path(forResource: "balloon", ofType: "mp3")
            
            self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
            
            self.player.prepareToPlay()
            self.getData()
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                
                if self.player.isPlaying {
                    let screen = UIScreen.main.bounds.width - 30
                    
                    let value = self.player.currentTime / self.player.duration
                    
                    self.width = screen * CGFloat(value)
                }
            }
        }
    
    }
    
    func getData() {
        
        let asset = AVAsset(url: self.player.url!)
        
        for i in asset.commonMetadata {
            
            if i.commonKey?.rawValue == "artwork" {
                let data = i.value as! Data
                self.data = data
            }
            
            if i.commonKey?.rawValue == "title" {
                let title = i.value as! String
                self.title = title
            }
        }
        
    }
}
}
