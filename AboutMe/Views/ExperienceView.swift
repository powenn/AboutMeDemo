//
//  ExperienceView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/31.
//

import SwiftUI
import MarkdownUI

struct ExperienceView: View {    
    var body: some View {
        ScrollView{
            VStack{
                experienceArticle
            }
            .padding()
        }
        .padding(.top, 40.0)
        .edgesIgnoringSafeArea(.top)
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView()
    }
}
