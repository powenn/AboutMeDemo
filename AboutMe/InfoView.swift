//
//  InfoView.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/5/18.
//

import SwiftUI
import BetterSafariView

struct InfoView: View {
    @State private var showWebPage = false
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form{
            Section(header: Text("App Version")){
                    Text("\(appVersion!)")
            }
            Section(header: Text("My Github Account")) {
                HStack {
                    Text("powenn")
                        .foregroundColor(.accentColor)
                    Spacer()
                        .padding(.trailing)
                    Image("GithubIcon")
                        .resizable()
                        .frame(width: 32.0, height: 32.0, alignment: .leading)
                }
                .onTapGesture {
                    showWebPage.toggle()
                }
                .safariView(isPresented: $showWebPage) {
                    SafariView(
                        url: URL(string: "https://github.com/powenn")!,
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
        
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.backward.circle.fill")
                .font(.title)
                .foregroundColor(Color("CustomBlue"))
            Text("其他")
                .font(.body)
                .foregroundColor(Color("CustomBlue"))
        }))
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

