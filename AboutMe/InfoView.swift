//
//  InfoView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/18.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var counter = 10
    
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
                    Button(action: {
                        self.counter -= 1
                        while counter == 0 {
                            counter = 10
                            if let url = URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ") {
                                UIApplication.shared.open(url)
                            }
                        }
                    }) {
                        Circle()
                            .frame(width: 300, height: 100)
                            .foregroundColor(Color("CustomBlue"))
                            .overlay(
                                Text("\(counter)")
                                    .font(.system(size: 50, weight: .bold, design: .rounded))
                                    .foregroundColor(.white)
                            )
                    }
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
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}