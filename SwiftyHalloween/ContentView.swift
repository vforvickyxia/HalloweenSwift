//
//  ContentView.swift
//  SwiftyHalloween
//
//  Created by Vicky Xia on 10/3/24.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var imageName = ""
    @State private var soundName = ""
    @State private var message = ""
    @State private var audioPlayer: AVAudioPlayer!
    let imageNames = ["corona", "ghost", "bat", "spider", "vampire", "witch", "pumpkin", "skull", "david", "house"]
    let messages = ["It is certain",
                    "It is decidedly so",
                    "Without a doubt",
                    "Yes, definitely",
                    "You may rely on it",
                    "As I see it, yes",
                    "Most likely",
                    "Outlook good",
                    "Yes",
                    "Signs point to yes",
                    "Reply hazy try again",
                    "Ask again later",
                    "Better not tell you now",
                    "Cannot predict now",
                    "Concentrate and ask again",
                    "Don't count on it",
                    "My reply is no",
                    "My sources say no",
                    "Outlook not so good",
                    "Very doubtful" ]
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Text(message)
                .font(.largeTitle)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(height:80)
            
            Spacer()
            
            Button ("🎃 Predict!"){
                var newImageName = imageNames.randomElement()!
                while newImageName == imageName {
                    newImageName = imageNames.randomElement()!
                }
                var newMessage = messages.randomElement()!
                while newMessage == message {
                    newMessage = messages.randomElement()!
                }
                imageName = newImageName
                message = newMessage
                
                message = messages.randomElement()!
                soundName = "\(imageName)_sound"
                playSound(name: soundName)
    
            }
            .font(.title)
            .tint(.orange)
            .foregroundColor(.black)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
    func playSound(name: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 Could not read file named \(soundName) ")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer ")
        }
    }
}

#Preview {
    ContentView()
}
