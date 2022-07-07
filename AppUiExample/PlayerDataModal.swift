//
//  PlayerDataModal.swift
//  AppUiExample
//
//  Created by VB on 7.07.2022.
//

import Foundation
import SwiftUI

class PlayerDataModal : ObservableObject{
    init(){
        items = DataModal.items
    }
    @Published var items : [DataModal]
    
}
