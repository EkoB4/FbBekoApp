//
//  PlayerDetails.swift
//  AppUiExample
//
//  Created by VB on 11.07.2022.
//

import SwiftUI
import BottomSheet_SwiftUI
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
struct AddCartButton: View {
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View {
        VStack{
            ForEach(viewModal.playerItems){img in
                Button {
                    print("Booker screen openend")
                } label: {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("ButtonBackgroundColor"))
                        .overlay(Text("Go").bold()
                                    .foregroundColor(.white))
                        .frame(width:200,height:30)
                }
            }
        }
    }
}
struct DevinBookerScreen : View{
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    @State var isSheetOpen : Bool = false
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
                            .overlay(
                                BottomSheet(
                                           isOpen: self.$isSheetOpen,
                                           config: BottomSheetConfig(maxHeight:UIScreen.main.bounds.height/0.5)
                                       ) {
                                           HStack{
                                           VStack{
                                               player.shoe
                                                   .resizable()
                                                   .frame(width: 150, height: 150)
                                                   .padding(.trailing,10)
                                               player.shirt
                                                   .resizable()
                                                   .frame(width: 200, height: 200)
                                           }
                                               VStack{
                                               Text(player.shoeName)
                                                   .font(.system(size:20))
                                                   .bold()
                                                   .padding()
                                                 AddCartButton()
                                                           .offset(y:-20)
                                               }.padding(.bottom,150)
                                               Spacer(minLength:UIScreen.main.bounds.width/10)
                                           }
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

/*
 HStack{
     VStack{
     player.shoe
         .resizable()
         .frame(width: 200, height: 200)
         .padding(.top,680)
     player.shirt
         .resizable()
         .frame(width: 200, height: 200)
        // .padding(.top,420)
     }
     VStack{
     Text(player.shoeName)
         .font(.system(size:30))
         .bold()
         .padding(.top,490)
       AddCartButton()
                 .offset(y:-20)
     }
     Spacer(minLength:UIScreen.main.bounds.width/60)
 }*/
