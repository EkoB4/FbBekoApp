//
//  DataModal.swift
//  AppUiExample
//
//  Created by VB on 6.07.2022.
//

import Foundation
import SwiftUI

struct DataModal : Identifiable{
    var id : UUID = UUID()
    var name :String
    var playerImage : Image
}
struct FilterData: Identifiable{
    var id : UUID = UUID()
    var FilterName: String
}

struct PlayerItemModal : Identifiable{
    var id: UUID = UUID()
    var shoe : Image
    var shoeName : String
    var shirt : String
}
extension FilterData{
    static let filterItems = [FilterData(FilterName: "sa"),
    FilterData(FilterName: "as"),
    FilterData(FilterName: "fs")]
}
extension DataModal{
    static let items = [
    DataModal(name: "Sehmus Hazer", playerImage: Image("Seho")),
    DataModal(name:"Devin Booker", playerImage: Image("DB")),
    DataModal(name:"Nando de Colo", playerImage: Image("ndc"))
    ]
}
extension PlayerItemModal{
    static let DevinBooker = [PlayerItemModal(shoe: Image("GF3"), shoeName: "Zoom Freak", shirt: "")]
    static let DeColo = [PlayerItemModal(shoe: Image("KY7"), shoeName: "Zoom Freak", shirt: "")]
    static let SehmusHazer = [PlayerItemModal(shoe: Image("KX"), shoeName: "Zoom Freak", shirt: "")]

}
