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

extension DataModal{
    static let item = [
    DataModal(name: "Sehmus", playerImage: Image("Seho"))]
}