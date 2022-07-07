
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
                .padding(.trailing,230)
            HStack{
              Text("Players")
                    .padding(.trailing,280)
            }
            ScrollView(.horizontal){
                LazyHStack(spacing:20){
                    ForEach(0..<2){test in
                        ForEach(viewModal.items){item in
                            PlayersButton().overlay(
                                VStack{
                                    Text(item.name)
                                        .bold()
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                    VStack{
                                item.playerImage
                                    .resizable()
                                    .offset(y:20)
                                    .frame(width:180,height:330)
                                    }
                                }
                            )
                        }
                        
                    }
                }.padding()
            }
            Spacer(minLength: 200)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

