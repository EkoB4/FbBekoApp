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
        filterItems = FilterData.filterItems
        playerItems = PlayerItemModal.playerItems
    }
    @Published var items : [DataModal]
    @Published var filterItems : [FilterData]
    @Published var playerItems : [PlayerItemModal]
}
