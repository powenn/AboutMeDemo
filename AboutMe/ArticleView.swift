//
//  PagesView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/17.
//

import SwiftUI

struct ArticleView: View {
    @State var selectedArticle : Article?
    @State var showInfo : Bool = false
    var body: some View {
        NavigationView {
            List(articles) { article in
                ArticleRow(article: article)
                    .onTapGesture {
                        self.selectedArticle = article
                    }
                    .sheet(item: self.$selectedArticle) { article in ArticleDeatilView(article: article)
                    }
            }
            .navigationBarTitle("我的資料")
            .navigationBarItems(trailing :
                                    
                                    Button(action: {
                self.showInfo = true
            }, label: {
                Image(systemName:"info.circle")
                    .font(.title)
                    .foregroundColor(.black)
            })
                                
            )
            .sheet(isPresented: $showInfo){
                InfoView()
            }
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
                .previewDevice("iPhone 11 Pro")
        }
    }
}
