//
//  InfoView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/18.
//

import SwiftUI
import AVKit

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var counter = 5
    
    @State private var playVideo:Bool = false
    let prankVideoPlayer = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video", ofType: "mov")!))
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Details of the app")) {
                    HStack {
                        Link(destination: URL(string: "https://github.com/powenn/AboutMeDemo")!, label: {
                            Text("Source Code")
                        })
                        Spacer()
                            .padding(.trailing)
                        Image("GithubIcon")
                            .resizable()
                            .frame(width: 32.0, height: 32.0, alignment: .leading)
                    }
                }
                VStack{
                    HStack{
                        Spacer()
                        Button(action: {
                            self.counter -= 1
                            while counter == 0 {
                                counter = 5
                                playVideo = true
                            }
                        }) {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color("CustomBlue"))
                                .overlay(
                                    Text("\(counter)")
                                        .font(.system(size: 50, weight: .bold, design: .rounded))
                                        .foregroundColor(.white)
                                )
                        }
                        Spacer()
                    }
                    .padding(5)
                }
            }
            
            .navigationBarTitle("Info")
            .navigationViewStyle(StackNavigationViewStyle())
        }
        
        .overlay(
            HStack {
                Spacer()
                
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                    })
                    .padding(.trailing,20)
                    .padding(.top,40)
                    
                    Spacer()
                }
            }
        )
        .fullScreenCover(isPresented: $playVideo) {
            VideoPlayer(player: prankVideoPlayer)
                .ignoresSafeArea(.all)
                .onAppear() {
                    prankVideoPlayer.play()
                    prankVideoPlayer.seek(to: .zero)
                }
                .onDisappear() {
                    prankVideoPlayer.pause()
                }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
