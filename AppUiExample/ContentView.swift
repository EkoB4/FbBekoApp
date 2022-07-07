
//  ContentView.swift
//  AppUiExample
//
//  Created by VB on 4.07.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModal : PlayerDataModal = PlayerDataModal()
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(){
                ForEach(0..<4){test in
                    ForEach(viewModal.items){item in
                        PlayersButton().overlay(
                            item.playerImage
                                .resizable()
                                .frame(width:160,height:230)
                        )
                    }
                    
                }
            }
        }
    }
}
   
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

