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

let articles = [
                Article(title: "AboutMe App",excerpt: "我的第一個SwiftUI小程式，把學習歷程、背審資料做成iOS App", image: "AboutMeApp", content: "5/17日突發奇想，花了大約一天半時間把學習歷程和個人簡介等做成App，並透過實作此程式練習iOS開發，這是我的第一個iOS應用，雖然我也有學習用StoryBoard、UI元件建構App的方法，但我最後採用SwiftUI開發，因為這對開發簡單小程式而言更方便，能加快開發速度。\n\nApp主頁右上方資訊按鈕點擊後有此程式的原始碼連結，和一個驚喜，點擊五次後會觸發。"),
                Article(title: "AltServer-Linux-ShellScript",excerpt: "我的第一個小程式，使用Bash寫出CLI介面，讓AltServer-Linux操作更容易", image: "Work1", content: "看到AltServer-Linux項目發布後，原項目操作時需在終端機輸入較多指令，為了方便使用，我用Bash寫了CLI介面讓操作更容易一些，和裝置配對後，取得其UDID，之後詢問用戶AppleID和密碼，就能安裝ipa檔案至裝置。"),
                Article(title: "AltServer-Linux-GUI", excerpt: "如其名，這是個GUI應用，做出CLI後我嘗試做GUI，使用Python語言、PyQt5", image: "Work2", content: "學習Python的過程中，我把之前寫的腳本用Python寫了一次，之後看到書中介紹用Tkinter寫GUI，想嘗試寫圖形化，但後來我選擇了PyQt，因為它能提供更多UI元件，之後我在網路上找了些教學和範例，便開始創作這個程式。")
]
