//
//  ArticleDeatilView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/17.
//

import SwiftUI

struct ArticleDeatilView: View {
    var article: Article
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Group {
                    Text(article.title)
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                }
                .padding(.bottom,0)
                .padding(.horizontal)
                
                Text(article.content)
                    .font(.body)
                    .padding()
                    .lineLimit(1000)
                    .multilineTextAlignment(.leading)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.backward.circle.fill")
                .font(.title)
                .foregroundColor(Color("CustomBlue"))
            Text("作品集")
                .font(.body)
                .foregroundColor(Color("CustomBlue"))
        }))
    }
}

struct ArticleDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleDeatilView(article: articles[0])
        }
    }
}

