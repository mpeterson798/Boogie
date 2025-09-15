//
//  ContentView.swift
//  Boogie
//
//  Created by Matthew Peterson on 9/14/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var imageList = ["globe", "wind", "flame"]
    @State private var image = ""
    @State private var image1 = ""
    @State private var image2 = ""
    @State private var image3 = ""
    @State private var pressCount = 1
    @State private var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack {
            
            Spacer ()
            
            Text("Boogie Wonderland!")
                .font(.largeTitle)
                .fontWeight(.black)
            
            
            HStack {
                
                Image(systemName: image1)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.teal)
                    .frame(width: 120, height: 120)
                
                Image(systemName: image2)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.blue)
                    .frame(width: 120, height: 120)

                Image(systemName: image3)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.red)
                    .frame(width: 120, height: 120)

            }
            
            Spacer()
            
            Button("Funk!") {
                
                
                if pressCount == 1 {
                    image1 = "globe"
                } else if pressCount == 2 {
                    image1 = "globe"
                    image2 = "wind"
                } else if pressCount == 3 {
                    image1 = "globe"
                    image2 = "wind"
                    image3 = "flame"
                } else {
                    image1 = "globe"
                    image2 = "wind"
                    image3 = "flame"
                    
                }
                
                pressCount += 1
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
