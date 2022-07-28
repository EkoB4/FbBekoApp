//
//  MainView.swift
//  AppUiExample
//
//  Created by VB on 7.07.2022.
//

import SwiftUI

struct AppMainView: View {
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    @Environment (\.openURL) private var openUrl 
    var body: some View {
        VStack{
            Link("Visit Apple", destination: URL(string: "https://www.apple.com")!)
                .font(.title)
                .foregroundColor(.red)
        }
    }
}

struct AppMainView_Previews: PreviewProvider {
    static var previews: some View {
        AppMainView()
    }
}
