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
    private let resumeArticle = Markdown(
                  #"""
                  
                  # **簡歷**
                  
                  姓名： 蕭博文
                                    
                  畢業高中： 板橋高中
                  
                  興趣和想學習知識：
                  - 軟體開發
                  - 物聯網
                  - 作業系統
                  - 程式語言
                  - 資訊安全
                  - 網頁開發
                  - 指彈吉他
                  
                  ---
                  
                  ## 近期作品
                  
                  - [AboutMe app](https://github.com/powenn/AboutMeDemo)
                  - [AltServer-LinuxGUI](https://github.com/powenn/AltServer-LinuxGUI)
                  - [AltServer-LinuxShellScript](https://github.com/powenn/AltServer-Linux-ShellScript)
                  
                  ---
                  
                  ## 關於自己
                  
                  高中沒有教我太多這些領域的事物，大多是自己另外花時間學習，現在在學習Swift、SwiftUI、C++、Python，近期在codewars網站上練習程式設計題目，我想寫iOS越獄插件、MacOS應用，前者預計使用theos orion以Swift編程，後者用SwiftUI。
                  
                  我在開源社群中學習很多，未來有新作品時，我很樂意將它開源，讓更多人參與和優化，或是讓人參考學習，我很喜歡這樣的模式，能與許多有共同理念和熱忱的人一起做事。
                  
                  短期自主學習方向是iOS應用開發、MacOS應用開發、Python、Linux相關．因為有相對充足的資源，在Github上有許多項目能參考，有認識的國外好友能請教，設備有兩隻越獄過的iPhone、一台MacBook air、一隻PinePhone linux phone，還有相關的書籍。
                  
                  近期目標是維護作品，透過練習題目打好程式設計基礎，我主要練習Python、Swift，並繼續閱讀開發相關書籍，希望未來從事軟體開發相關工作，開發桌面端和行動端應用。
                  
                  ---
                  
                  """#
                    )
    
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
