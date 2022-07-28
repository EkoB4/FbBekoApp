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
        itemUrls = ShoeUrls.ItemUrls
        DevinBookerItems = PlayerItemModal.DevinBooker
        DeColoItems = PlayerItemModal.DeColo
        SehmuzHazer = PlayerItemModal.SehmusHazer

    }
    @Published var items : [DataModal]
    @Published var itemUrls : [ShoeUrls]
    @Published var SehmuzHazer : [PlayerItemModal]
    @Published var DeColoItems : [PlayerItemModal]
    @Published var DevinBookerItems : [PlayerItemModal]
    
}
