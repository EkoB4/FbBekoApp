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
    @Environment(\.openURL) var openUrl
    @StateObject private var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View {
        VStack{
                Button {
                    openUrl(URL(string: "https://www.sneaksup.com/nike-zoom-freak-3-da0694-001?matchtype=&utm_term=&gclid=Cj0KCQjw54iXBhCXARIsADWpsG9RqHwAiYxEZgzk0Dplgafyy2r_FT4bRgRqUZr6tFasMQx0Na-cJkoaAoCYEALw_wcB")!)
                } label: {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("ButtonBackgroundColor"))
                        .overlay(Text("Go").bold()
                                    .foregroundColor(.white))
                        .frame(width:150,height:60)
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
                            .frame(maxWidth:.infinity,maxHeight: 300)
                            .padding(.top,600)
                            .foregroundColor(.white)
                            .overlay(
                                BottomSheet(
                                           isOpen: self.$isSheetOpen,
                                           config: BottomSheetConfig(maxHeight:UIScreen.main.bounds.height/1.1)
                                       ) {
                                           VStack{
                                               HStack{
                                                   player.shoe
                                                       .resizable()
                                                       .frame(width: 150, height: 150)
                                                       .padding(.leading,30)
                                                   Text(player.shoeName)
                                                       .font(.system(size:30))
                                                       .bold()
                                                       .frame(width:100)
                                                   AddCartButton()
                                                       .padding(.trailing,50)
                                               }
                                               HStack{
                                                   player.shirt
                                                       .resizable()
                                                       .frame(width: 200, height: 200)
                                                       .offset(x:20)
                                                   Text(player.shirtName)
                                                       .font(.system(size:30))
                                                       .bold()
                                                       .frame(width:100)
                                                   AddCartButton()
                                                       .padding(.trailing,65)
                    
                                               }
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
         .frame(width: 150, height: 150)
         .padding(.trailing,10)
     Text(player.shoeName)
         .font(.system(size:20))
         .bold()
         .padding()
       AddCartButton()
                 .offset(y:-20)
     VStack{
     player.shirt
         .resizable()
         .frame(width: 200, height: 200)
         Text(player.shirtName)
             .font(.system(size:20))
             .bold()
             .padding()
     }.padding(.bottom,30)
 }
    // Spacer(minLength:UIScreen.main.bounds.width/10)
 }
 }*/
