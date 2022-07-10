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

extension FilterData{
    static let filterItems = [FilterData(FilterName: "sa"),
    FilterData(FilterName: "as")]
}
extension DataModal{
    static let items = [
    DataModal(name: "Sehmus Hazer", playerImage: Image("Seho")),
    DataModal(name:"Devin Booker", playerImage: Image("DB"))
    ]
}
