//
//  MainView.swift
//  AppUiExample
//
//  Created by VB on 4.07.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView(.vertical){
        VStack{
            VStack{
                Image("Seho")
            }
            Spacer(minLength: 40)
                VStack{
                    Text("Welcome")
                        .font(.system(size: 80))
                        .padding(.vertical,-140)
                    Text("FbBeko Player Shop")
                        .font(.system(size:30))
                        .bold()
                        .padding(.vertical,-70)
                    Text("Lorem Ipsum, kısaca Lipsum, masaüstü yayıncılık ve basın yayın sektöründe kullanılan taklit yazı bloğu olarak tanımlanır. Lipsum, oluşturulacak şablon ve taslaklarda içerik yerine geçerek yazı bloğunu doldurmak için kullanılır")
                        .multilineTextAlignment(.center)
                        .padding()
                }.frame(width:400,height: 400)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color:.white,radius: 20,x: -2,y: -61)
            }
            Spacer()

        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
