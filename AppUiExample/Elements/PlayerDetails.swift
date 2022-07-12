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
struct DevinBookerScreen : View{
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View{
        VStack{
            HStack{
                ForEach(viewModal.DevinBookerItems){player in
                VStack{
                    Image("DB").padding(.leading,230)
                        HStack{
                            Text(player.shoeName)
                                .foregroundColor(.white)
                                .bold()
                                .padding(.bottom,30)
                            player.shoe
                                .resizable()
                                .frame(width:100,height:100)
                        }.background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color("playerScreenColor"))
                                        .frame(width:250,height: 60)
                        )
                    }.padding(.trailing,160)
                }
            }
        }
    }
}

struct PlayerDetails_Previews: PreviewProvider {
    static var previews: some View {
        DevinBookerScreen()
    }
}
