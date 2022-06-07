//
//  ExperienceView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/31.
//

import SwiftUI
import MarkdownUI

struct ExperienceView: View {
    private let experienceArticle = Markdown(
              #"""
              
              ## 學習心得和收穫
                            
              這些都是我在課餘時間獨立完成的項目，沒有指導老師，都是自己想做的，我的理念是--「有意義、有價值的事就去做」，過程中遇到的難題，我的解決方法是多試、多查、多參考，先試出問題所在、思考如何解決、嘗試自己解決，若不能解決就去查資料、參考他人如何解決，透過這些實作，我收穫程式開發實作經驗，從終端機用的CLI到圖形化的GUI，從解決底層程式碼到做出理想的介面，之後又實作了iOS App。
              
              我認為興趣和愛好不該只是只有嘴上說說、憑空想像，自己的未來也不該用「不排斥、不討厭就好」的標準來決定，透過實際動手實踐完成自己的想法才是真實，這些練習、實作讓我清楚知道自己喜歡什麼、想學什麼、適合什麼、想成為怎麼樣的人，更多的是看清自己的樣子，作為一個初學者，我還有很多不會的地方，但我並未就此放棄，因為我知道難題克服了之後就不再是難題。
              
              ---
              
              ## Some Quotes
              
              > 如果因為害怕失敗，而不去努力，那就不會有能夠成功的人。
              
              > 無聊的並不是那每一天，而是和別人相似的自己。
              
              > ねぇ，あなたは何色になりたい?
               
              """#
                )
    
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
