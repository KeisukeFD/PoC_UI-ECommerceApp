//
//  MenuView.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-19.
//

import SwiftUI

typealias MenuItems = [String]

fileprivate struct ItemModifier: ViewModifier {
    let font = Font.system(.body).bold()
    
    func body(content: Content) -> some View {
        return content
            .foregroundColor(.gray)
            .font(font)
    }
}

fileprivate struct ActiveItemModifier: ViewModifier {
    let font = Font.system(.body).bold()
    
    func body(content: Content) -> some View {
        return content
            .foregroundColor(.black)
            .opacity(0.8)
            .font(font)
            .overlay(Rectangle()
                        .fill(Color.black)
                        .frame(width: 30, height: 3)
                        .offset(y: 15)
                        .opacity(0.6)
                     , alignment: .leading
            )
    }
}


struct HorizontalMenuFilterView: View {
    let items: MenuItems
    @Binding var current: String
    @State var active: String = ""
        
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(items, id: \.self) { item in
                    Button(action: {
                        self.active = item
                        self.current = item
                    }) {
                        if(self.active == item) {
                            Text(item)
                                .modifier(ActiveItemModifier())
                        } else {
                            Text(item)
                                .modifier(ItemModifier())
                        }
                    }.padding(.bottom, 10)
                }
            }.padding(.leading)
        }.onAppear {
            if(self.active == "") {
                self.active = self.items.first ?? ""
            }
        }
    }
}
