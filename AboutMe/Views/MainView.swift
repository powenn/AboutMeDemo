//
//  MainView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/31.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ResumeView()
                .tabItem {
                    Label("簡歷", systemImage: "person.crop.rectangle.fill")
                }
            ArticleView()
                .tabItem {
                    Label("作品集", systemImage: "folder.fill")
                }
            ExperienceView()
                .tabItem {
                    Label("心得和收穫", systemImage: "books.vertical.fill")
                }
            OthersView()
                .tabItem {
                    Label("其他", systemImage: "doc.text.fill")
                }
        }
        .accentColor(Color("CustomPurple"))
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
