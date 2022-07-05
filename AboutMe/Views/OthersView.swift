//
//  OthersView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/31.
//

import SwiftUI
import MarkdownUI

struct OthersView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                othersArticle
                    .padding()
            }
            .navigationBarTitle("其他")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: NavigationLink(destination: InfoView(), label: {
                Image(systemName: "info.circle")
                    .font(.title)
                    .foregroundColor(.black)
            }))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct OthersView_Previews: PreviewProvider {
    static var previews: some View {
        OthersView()
    }
}
