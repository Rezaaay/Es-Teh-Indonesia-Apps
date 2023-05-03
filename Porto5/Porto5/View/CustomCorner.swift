//
//  CustomCorner.swift
//  Porto5
//
//  Created by Naufal Fachreza on 03/05/23.
//

import SwiftUI

struct CustomCorner: Shape {

    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

