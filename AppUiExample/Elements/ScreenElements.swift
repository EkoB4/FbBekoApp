//
//  ScreenElements.swift
//  AppUiExample
//
//  Created by VB on 6.07.2022.
// Option + Command + Enter Open/Hide(console)

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


/*struct PlayerScreenDestinationButton: View {
 var itemNames = ["1" , "2" , "3"]
 var body: some View {
 NavigationView{
 VStack{
 ForEach(itemNames,id:\.self){ name in
 
 VStack{
 NavigationLink(
 destination: Group{
 if name == "1"{
 ContentView()
 }
 if name == "2"{
 MainView()
 }
 if name == "3"{
 ContentView()
 }
 }) {
 Text(name)
 }
 }
 }
 }
 }
 }
 }
 */
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
            LazyHStack{
                ForEach(0..<1){ _ in
                    ForEach(viewModal.items){item in
                        VStack{
                            PlayersButton().overlay(
                                //NavigationView{
                                VStack{
                                    NavigationLink {
                                        chooseScreen()
                                    } label: {
                                        VStack{
                                        Text(item.name)
                                                .bold()
                                                .padding(.top,20)
                                                .foregroundColor(.white)
                                                
                                            Spacer()
                                        item.playerImage
                                            .resizable()
                                            .frame(width: 150, height: 330)
                                        }
                                    }
                                }
                                //}
                            )
                        }
                    }
                }
            }
        }
    }
    @ViewBuilder
    func chooseScreen() -> some View{
        ForEach(viewModal.items){item in
            switch item.name{
            case "Sehmus Hazer":
                MainView()
            case "Devin Booker":
                MainView()
            case"Nando De Colo":
                MainView()
                
            default :
                AppMainView()
            }
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
        //PlayerFilterScrollView()
    }
}


