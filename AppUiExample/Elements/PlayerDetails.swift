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
            .foregroundColor(.white)
            .frame(width:300,height: 80)
    }
}

struct playerItemScrollView:View{
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View{
        List(viewModal.playerItems){data in
            PlayerItemRectangle()
        }.listStyle(.sidebar)
    }
}

struct PlayerDetails_Previews: PreviewProvider {
    static var previews: some View {
        playerItemScrollView()
    }
}
