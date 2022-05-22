//
//  Article.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/17.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var excerpt: String
    var image: String
    var content: String
}

let articles = [Article(title: "個人基本資料",excerpt: "關於自己的一些資訊，像是興趣喜好、正在學習什麼、有哪些目標、規劃、理想", image: "Profile", content: "姓名：蕭博文 Powen-Hsiao\n\n就讀高中：板橋高中\n\n感興趣和想學習的事物：\n\n軟體開發、物聯網、作業系統、程式語言、資訊安全、網頁開發\n\n自我介紹：\n高中沒有教我太多這些領域的事物，大多是自己另外花時間學習，現在在學習Swift、SwiftUI、C++、Python，近期在codewars網站上練習程式設計題目，我想寫iOS越獄插件、MacOS應用，前者預計使用theos orion以Swift編程，後者用SwiftUI。\n我在開源社群中學習很多，未來有新作品時，我很樂意將它開源，讓更多人參與和優化，或是讓人參考學習，我很喜歡這樣的模式，能與許多有共同理念和熱忱的人一起做事。\n短期自主學習方向是iOS應用開發、MacOS應用開發、Python、Linux相關．因為有相對充足的資源，在Github上有許多項目能參考，有認識的國外好友能請教，設備有兩隻越獄過的iPhone、一台MacBook air、一隻PinePhone linux phone，還有相關的書籍。\n近期目標是維護作品，透過練習題目打好程式設計基礎，我主要練習Python、Swift，並繼續閱讀開發相關書籍，希望未來從事軟體開發相關工作，開發桌面端和行動端應用。"),
                Article(title: "我的作品之一：AboutMe App",excerpt: "我的第一個SwiftUI小程式，把學習歷程、背審資料做成iOS App", image: "AboutMeApp", content: "5/17日突發奇想，花了大約一天半時間把學習歷程和個人簡介等做成App，並透過實作此程式練習iOS開發，這是我的第一個iOS應用，雖然我也有學習用StoryBoard、UI元件建構App的方法，但我最後採用SwiftUI開發，因為這對開發簡單小程式而言更方便，能加快開發速度。\n\nApp主頁右上方資訊按鈕點擊後有此程式的原始碼連結，和一個驚喜，點擊五次後會觸發。"),
                Article(title: "我的作品之一：AltServer-Linux-ShellScript",excerpt: "我的第一個小程式，使用Bash寫出CLI介面，讓AltServer-Linux操作更容易", image: "Work1", content: "看到AltServer-Linux項目發布後，原項目操作時需在終端機輸入較多指令，為了方便使用，我用Bash寫了CLI介面讓操作更容易一些，和裝置配對後，取得其UDID，之後詢問用戶AppleID和密碼，就能安裝ipa檔案至裝置。"),
                Article(title: "我的作品之一：AltServer-Linux-GUI", excerpt: "如其名，這是個GUI應用，做出CLI後我嘗試做GUI，使用Python語言、PyQt5", image: "Work2", content: "學習Python的過程中，我把之前寫的腳本用Python寫了一次，之後看到書中介紹用Tkinter寫GUI，想嘗試寫圖形化，但後來我選擇了PyQt，因為它能提供更多UI元件，之後我在網路上找了些教學和範例，便開始創作這個程式。"),
                Article(title: "其他經歷...", excerpt: "一些其他的小故事和說明", image: "Story1", content: "某日因緣際會有幸收到pine64創辦人贈與提供我學習的Pinephone Linux phone，我想就是從那時正式開始了我的學習之路。\n我偶爾會在推特發表一些想法，某日我發布了自己的一個小想法，關於Checkra1n越獄工具可攜化的一個選擇，使用像是PinePhone這類的Linux手機就能實現，之後創辦人傳訊息給我，給他我的地址，要安排一隻給我，後來真的收到了，之後我也如願做到使用這支手機進行越獄操作，也把所有需要的指令、依賴套件處理成一個小腳本，有需要的人只需要複製一行指令貼上後就能處理好，也把操作過程寫成文章。\n在那之前我就有開始做些能力所及的學習，像是作業系統可攜化，安裝Win10至隨身碟、行動硬碟、學習用虛擬機，做了些比較簡單的學習，那時的想法是先以身邊現有資源為主，善用它們學習，之後發覺自己的興趣是程式和資訊相關，開始去看別人寫的程式，最開始我不會寫，但能看懂部分，之後做了板橋高中午餐系統深色模式的優化。\n再之後我買了想讀的書籍，一共八本，iOS開發兩本，iOS開發(SwiftUI)，python，C++，滲透測試，網頁開發，Linux入門，後來創作了些作品。\n有想法時，能力所及的我盡力去實現，還做不到的就以此為目標邁進繼續學習。\n\n其他待未來更新..."),
                Article(title: "學習心得和收穫", excerpt: "透過這些實作，我學習到什麼、收穫什麼", image: "Photo1", content: "這些都是我在課餘時間獨立完成的項目，沒有指導老師，都是自己想做的，我的理念是--「有意義、有價值的事就去做」，過程中遇到的難題，我的解決方法是多試、多查、多參考，先試出問題所在、思考如何解決、嘗試自己解決，若不能解決就去查資料、參考他人如何解決，透過這些實作，我收穫程式開發實作經驗，從終端機用的CLI到圖形化的GUI，從解決底層程式碼到做出理想的介面，之後又實作了iOS App。\n我增進了觀察探究問題的能力和解決問題的能力，收穫了開發實戰經驗。\n\n我認為興趣和愛好不該只是只有嘴上說說、憑空想像，自己的未來也不該用「不排斥、不討厭就好」的標準來決定，透過實際動手實踐完成自己的想法才是真實，這些練習、實作讓我清楚知道自己喜歡什麼、想學什麼、適合什麼、想成為怎麼樣的人，更多的是看清自己的樣子，作為一個初學者，我還有很多不會的地方，但我並未就此放棄，因為我知道難題克服了之後就不再是難題。")
]
