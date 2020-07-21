//
//  MenuView.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-19.
//

import SwiftUI

enum MenuItems: String, CaseIterable {
    case HandBag = "Hand bag"
    case Jewellery = "Jewellery"
    case Footwear = "Footwear"
    case Dress = "Dress"
    case Skirt = "Skirt"
}

struct HorizontalMenuView: View {
    @Binding var current: String
    @State var active: MenuItems = MenuItems.HandBag
        
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(MenuItems.allCases, id: \.self) { item in
                    Button(action: {
                        self.active = item
                        self.current = item.rawValue
                    }) {
                        if(self.active == item) {
                            Text(item.rawValue)
                        } else {
                            Text(item.rawValue)
                        }
                    }
                }
            }.padding(.leading)
        }
    }
}
