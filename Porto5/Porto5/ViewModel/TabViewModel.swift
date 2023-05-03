//
//  TabViewModel.swift
//  Porto5
//
//  Created by Naufal Fachreza on 03/05/23.
//

import SwiftUI

class TabViewModel: ObservableObject {

    @Published var selectedItem : Item!
    @Published var isDetail = false
}
