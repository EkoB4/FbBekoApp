//
//  SA.swift
//  AppUiExample
//
//  Created by VB on 14.07.2022.
//

import SwiftUI
import BottomSheet_SwiftUI
struct SA: View {
   @State var bottomSheetOpened = true
    var body: some View {
        VStack{
        BottomSheet(
                       isOpen: self.$bottomSheetOpened,
                       config: BottomSheetConfig()
                   ) {
                       Text("helloworld")
                   }.edgesIgnoringSafeArea(.all)
        }.background(Color.red)
    }
    }


struct SA_Previews: PreviewProvider {
    static var previews: some View {
        SA()
    }
}
