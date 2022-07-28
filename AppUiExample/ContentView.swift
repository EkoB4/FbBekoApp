
//  ContentView.swift
//  AppUiExample
//
//  Created by VB on 4.07.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View {
        NavigationView{
        VStack{
            
           // Spacer(minLength: 20)
            Text("Home")
                .bold()
                .multilineTextAlignment(.leading)
                .font(.system(size:50))
                .padding(.trailing,255)
            HStack{
            Text("Filter")
                    .font(.system(size: 20))
                    .padding(.leading,15)
                Spacer(minLength: 10)
            }
            VStack{
            VStack{
                PlayerFilterScrollView()
                
            }.frame(width:.infinity,height: UIScreen.main.bounds.height/14)
            HStack{
                PlayersScroll()
            }
            Spacer(minLength: UIScreen.main.bounds.height*0.1)
            }
        }.background(LinearGradient(colors: [Color("ScreenBackgroundColor"),.white], startPoint: .bottomLeading, endPoint: .topTrailing))
        .padding(.top,-90)
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

