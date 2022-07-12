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
            VStack{
                ForEach(viewModal.DevinBookerItems){player in
                VStack{
                    HStack(alignment:.bottom){
                         RoundedRectangle(cornerRadius: 20)
                            .frame(width:.infinity,height: 300)
                            .padding(.top,600)
                            .foregroundColor(.white)
                            .overlay(HStack{
                                player.shoe
                                    .resizable()
                                    .frame(width: 200, height: 200)
                                    .padding(.top,350)
                                VStack{
                                Text(player.shoeName)
                                    .font(.system(size:30))
                                    .bold()
                                    .padding(.top,410)
                                    
                                    Button {
                                        print("Booker screen openend")
                                    } label: {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color("ButtonBackgroundColor"))
                                            .overlay(Text("Go").bold()
                                                        .foregroundColor(.white))
                                            .frame(width:200,height:30)
                                            .offset(y:-20)
                                    }

                                   
                                }
                                Spacer(minLength:UIScreen.main.bounds.width/30)
                            })
                    }
                }.background(Color("ButtonBackgroundColor").ignoresSafeArea().overlay(Image("DB")))
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
