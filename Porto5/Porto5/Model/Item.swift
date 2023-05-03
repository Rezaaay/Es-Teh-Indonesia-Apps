//
//  Item.swift
//  Porto5
//
//  Created by Naufal Fachreza on 03/05/23.
//

import SwiftUI

struct Item: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var price: String
    var discount: String
    // both image and color name are same...
    var image: String
}
