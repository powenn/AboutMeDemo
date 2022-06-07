//
//  ContentView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/17.
//

import SwiftUI

struct ContentView: View {
    @State var NextPageClicked = true
    var body: some View {
        ZStack{
            if NextPageClicked {
                WeclomeView(NextPageClicked: self.$NextPageClicked)
            }
            else {
                MainView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
