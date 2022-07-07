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
                .frame(width:200,height: 300)
                .foregroundColor(.blue)
        }
    }
}

struct PlayersScroll :View{
    var body: some View{
        ScrollView(.horizontal){
            VStack{
                ForEach(0..<3){image in
                        PlayersButton()
                    
                }
            }
        }
    }
}
struct ScreenElements_Previews: PreviewProvider {
    static var previews: some View {
        PlayersScroll()
        
    }
}
