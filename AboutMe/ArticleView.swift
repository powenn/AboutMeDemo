//
//  PagesView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/17.
//

import SwiftUI

struct ArticleView: View {
    @State var selectedArticle : Article?
    var body: some View {
        NavigationView {            
            List(articles) { article in
                ZStack{
                    NavigationLink(destination: ArticleDeatilView(article: article)) {
                        EmptyView()
                    }
                    .opacity(0)
                    ArticleRow(article: article)
                }
            }
            .navigationBarTitle("作品集")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ArticleRow: View {
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
            
            Text(article.title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .lineLimit(3)
                .padding(.bottom, 0)
            
            Text(article.excerpt)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ArticleView()
        }
    }
}

