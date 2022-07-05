//
//  ResumeView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/31.
//

import SwiftUI
import MarkdownUI
import BetterSafariView

struct ResumeView: View {
    
    @State var hiddenTextOpacity:Double = 0.15
    @State var urlToOpen : String = ""
    @State private var showWebPage = false
    var body: some View {
        ScrollView{
            VStack{
                ZStack(alignment: .topTrailing){
                    Image("Profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .padding(.top, 60.0)
                    resumeArticle
                        .onOpenMarkdownLink { url in
                            self.urlToOpen = url.absoluteString
                            print(urlToOpen)
                            showWebPage.toggle()
                        }
                        .alert(isPresented: $showWebPage) {
                            Alert(
                                title: Text("Open Link")
                            )
                        }
                        .safariView(isPresented: $showWebPage) {
                            SafariView(
                                url: URL(string: urlToOpen)!,
                                configuration: SafariView.Configuration(
                                    entersReaderIfAvailable: false,
                                    barCollapsingEnabled: true
                                )
                            )
                            .preferredBarAccentColor(.white)
                            .preferredControlAccentColor(.accentColor)
                            .dismissButtonStyle(.close)
                        }
                }
            }
            .padding()
        }
        .padding(.top, 40.0)
        .edgesIgnoringSafeArea(.top)
    }
}

struct ResumeView_Previews: PreviewProvider {
    static var previews: some View {
        ResumeView()
    }
}
