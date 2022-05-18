//
//  WeclomeView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/17.
//

import SwiftUI

struct WeclomeView: View {
    @Binding var NextPageClicked:Bool
    var body: some View {
        LinearGradient(gradient:Gradient(colors:                 [Color("LightBlue"),Color("LightPurple")]),startPoint: .topLeading,endPoint: .bottomTrailing)
            .ignoresSafeArea()
            .overlay(
                VStack(spacing: 20) {
                    Spacer()
                    Text("AboutMe")
                        .font(.system(size: 60, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        .bold()
                        .rotation3DEffect(.degrees(30), axis: (x:1,y:0,z:0))
                        .shadow(color: .gray, radius: 1, x: 0, y: 5)
                    
                    Text("A Simple App\nIntroducing Myself")
                        .font(.system(size: 25, weight: .light, design: .monospaced))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.046, brightness: 0.18, opacity: 0.873))
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("Written in SwiftUI\nby powen")
                        .font(.system(size: 20, weight: .light, design: .monospaced))
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

//struct WeclomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        WeclomeView(NextPageClicked: .constant(true))
//            .previewDevice("iPhone 11 Pro")
//    }
//}
