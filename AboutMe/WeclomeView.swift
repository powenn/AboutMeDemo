//
//  WeclomeView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/17.
//

import SwiftUI
import Liquid

struct WeclomeView: View {
    @Binding var NextPageClicked:Bool
    var body: some View {
        LinearGradient(gradient:Gradient(colors:                 [Color("LightBlue"),Color("LightPurple")]),startPoint: .topLeading,endPoint: .bottomTrailing)
            .ignoresSafeArea()
            .overlay(
                VStack(spacing: 20) {
                    Spacer()
                    ZStack {
                        Liquid(period: 15)
                            .frame(width: 260, height: 280)
                            .foregroundColor(.blue)
                            .opacity(0.3)
                        
                        Liquid(samples: 4, period: 5)
                            .frame(width: 240, height: 260)
                            .foregroundColor(Color("CustomBlue"))
                            .opacity(0.6)
                        
                        Liquid(samples: 6)
                            .frame(width: 220, height: 220)
                            .foregroundColor(Color("CustomBlue"))
                            .opacity(0.8)
                        
                        Text("AboutMe")
                            .font(.system(size: 50, weight: .semibold, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .rotation3DEffect(.degrees(30), axis: (x:1,y:0,z:0))
                            .shadow(color: .gray, radius: 1, x: 0, y: 5)
                    }
                    Text("A Simple App\nIntroducing Myself")
                        .font(.system(size: 20, weight: .light, design: .monospaced))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.046, brightness: 0.18, opacity: 0.873))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, -10.0)
                    Text("Written in SwiftUI\nby powen")
                        .font(.system(size: 12, weight: .light, design: .monospaced))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.077, brightness: 0.482, opacity: 0.614))
                        .multilineTextAlignment(.center)
                        .rotation3DEffect(.degrees(-30), axis: (x:1,y:0,z:0))
                    Spacer()
                    VStack {
                        Button(action:{
                            self.NextPageClicked.toggle()
                        }) {
                            Label(title: {Text("Next Page")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                                  icon: { Image(systemName: "chevron.forward")
                                    .font(.title)
                            }
                            )
                            .padding(12)
                            .foregroundColor(Color.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("CustomPurple"),Color("CustomBlue")]),startPoint: .topLeading,endPoint: .bottomTrailing))
                            .font(.body)
                            .cornerRadius(40)
                            .padding()
                        }
                    }
                }
            )
    }
}

struct WeclomeView_Previews: PreviewProvider {
    static var previews: some View {
        WeclomeView(NextPageClicked: .constant(false))
    }
}
