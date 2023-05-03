//
//  Home.swift
//  Porto5
//
//  Created by Naufal Fachreza on 03/05/23.
//

import SwiftUI

struct Home: View {
    
    @State var items = [
        
        Item(title: "Redvelvet Es Teh Indonesia", price: "Rp. 35.000", discount: "7%", image: "p1"),
        Item(title: "Avocado Es Teh Indonesia", price: "Rp. 40.000", discount: "25%", image: "p2"),
        Item(title: "Original Tea Es Teh Indonesia", price: "Rp. 30.000", discount: "10%", image: "p3"),
        Item(title: "Berry Teh Es Teh Indonesia", price: "Rp. 30.000", discount: "20%", image: "p4"),
    ]
    
    @ObservedObject var tabData : TabViewModel
    var animation: Namespace.ID
    
    var body: some View {
        
        VStack{
            
            ZStack{
                
                HStack{
                    
                    Button(action: {}) {
                        
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 24, weight: .heavy))
                            .foregroundColor(.primary)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "bag")
                            .font(.system(size: 24, weight: .heavy))
                            .foregroundColor(.primary)
                    }
                }
                
                Text("Es Teh Indonesia")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
            }
            .padding()

            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 20){
                    
                    ForEach(items){item in
                        
                        // Card View....
                        
                        CardView(item: item, tabData: tabData,animation: animation)
                    }
                }
                .padding()
            }
        }
    }
}

// Model And Model Data....
