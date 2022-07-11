//
//  PlayerDetails.swift
//  AppUiExample
//
//  Created by VB on 11.07.2022.
//

import SwiftUI

struct PlayerDetails: View {
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View {
        VStack{
            ForEach(viewModal.items){img in
                Text(img.playerImage)
                    .padding(.trailing,-250)
            }
        }
    }
}

struct PlayerItemRectangle: View {
    var body: some View{
        RoundedRectangle(cornerRadius: 20)
            .stroke(.green)
            .background(.black)
            .cornerRadius(20)
            .frame(width:300,height: 80)
        
    }
}

struct DevinBookerScreen : View{
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View{
        VStack{
            ForEach(viewModal.DevinBookerItems){player in
                PlayerItemRectangle().overlay(
                        VStack{
                        player.shoe
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.leading,150)
                            HStack{
                                VStack{                                Text(player.shoeName)
                                    .bold()
                                    .foregroundColor(.white)
                                   // .offset(y:-50)
                                    .padding(.bottom,70)
                                }.frame(height:30)
                                    Spacer(minLength: 60)
                            }
                        }
                    )
                
            }
        }
    }
}

struct PlayerDetails_Previews: PreviewProvider {
    static var previews: some View {
        DevinBookerScreen()
    }
}
