//
//  ScreenElements.swift
//  AppUiExample
//
//  Created by VB on 6.07.2022.
//

import SwiftUI

struct PlayersButton: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width:200,height: 400)
                .foregroundColor(Color("ButtonBackgroundColor"))
        }
    }
}

struct PlayerFilterButton : View{
    var body: some View{
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white,lineWidth: 2)
                    .frame(width:130,height: 30)
                    .background(Color("ButtonBackgroundColor"))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 20,x:-2,y:5)
            }
    }
}

struct PlayersScroll :View{
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View{
        ScrollView(.horizontal){
            LazyHStack(spacing:20){
                ForEach(0..<1){test in
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
    }
}

struct PlayerFilterScrollView: View{
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View{
        ScrollView(.horizontal){
            LazyHStack(spacing:20){
                ForEach(viewModal.filterItems){filterName in
                    PlayerFilterButton()
                        .overlay(Button(action: {
                            //
                        }, label: {
                            Text(filterName.FilterName)
                                        .bold()
                                        .foregroundColor(.white)
                        }))
                }
            }
        }
    }
}
struct ScreenElements_Previews: PreviewProvider {
    static var previews: some View {
        PlayersScroll()
        PlayerFilterScrollView()
        
    }
}


