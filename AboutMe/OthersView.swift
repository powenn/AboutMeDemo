//
//  OthersView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/31.
//

import SwiftUI
import MarkdownUI

struct OthersView: View {
    private let othersArticle = Markdown(
              #"""
              
              ## 其他經歷
                            
              我在高中經驗過最酷的事肯定是收到Pine64創辦人免費提供給我學習的pinephone Linux phone，我想是從那時正式開始我的學習之路，不認識也未曾見面的人都願意自掏腰包為我提供學習資源了，還有什麼理由不去認真學習。
              
              這個機會讓我對Linux感興趣，之後買了一些書，後來寫了第一個程式是腳本程式，後續又做了兩個作品。
              
              在更久之前，還做了午餐系統的深色模式優化，就是個小小貢獻 。還有一些其他的，就省略不提
              
              關於我買的八本書，有三本是iOS App開發(一本是用SwiftUI，另外兩本是StoryBoard)，一本C++、一本Python、Linux入門、Kali Linux滲透測試、網頁開發。
              
              之後想了解Android App開發。
              
              曾經有段時間常被推特的一些朋友誤認我是開發人員，因為我偶爾會在上面發布一些東西，那時候我還不會寫程式，這一切怎麼開始的我已經記不清楚了，但我開始想學習這些我不會的事物。
              
              高中最幸運的事莫過於有可靠的老師，他們能給予方向、指引。
              
              ---
              
              ## SwiftUI ?
              
              這個App是SwiftUI寫的，是我的第一個App，主要是自己練習，用SwiftUI開發小程式整體感覺不錯，和StoryBoard比較感覺開發速度快很多，引用了MarkDownUI處理文字版面。
              
              過程就是翻書、偵錯、網路查資料、修改、增加。
              
              """#)
    
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
