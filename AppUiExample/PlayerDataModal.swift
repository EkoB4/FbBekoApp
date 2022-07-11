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
        DevinBookerItems = PlayerItemModal.DevinBooker
        playerItems = PlayerItemModal.DeColo
        playerItems = PlayerItemModal.SehmusHazer
    }
    @Published var items : [DataModal]
    @Published var filterItems : [FilterData]
    @Published var playerItems : [PlayerItemModal]
    @Published var DevinBookerItems : [PlayerItemModal]
}
