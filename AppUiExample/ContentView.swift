
//  ContentView.swift
//  AppUiExample
//
//  Created by VB on 4.07.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View {
        VStack{
            Spacer(minLength: 20)
            Text("Home")
                .bold()
                .multilineTextAlignment(.leading)
                .font(.system(size:40))
                .padding(.trailing,255)
            VStack{
                PlayerFilterScrollView()
            }.frame(width:.infinity,height: UIScreen.main.bounds.height/9)
            VStack{
                PlayersScroll()
            }
            Spacer(minLength: UIScreen.main.bounds.height*0.2 )

        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

