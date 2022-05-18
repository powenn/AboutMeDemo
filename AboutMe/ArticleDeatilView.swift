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
        // Dismiss button code area
        
        .overlay(
            HStack {
                Spacer()
                
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color("CustomBlue"))
                    })
                    .padding(.trailing,20)
                    .padding(.top,40)
                    
                    Spacer()
                }
            }
        )
        
        // Dismiss button code area
        
        .edgesIgnoringSafeArea(.top)
    }
}

struct ArticleDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleDeatilView(article: articles[0])
        }
    }
}
