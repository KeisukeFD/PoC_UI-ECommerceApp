//
//  Item.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-20.
//

import SwiftUI


struct ProductItem {
    var image: String
    var name: String
    var price: Float
    var color: Color
}


let products: [ProductItem] = [
    ProductItem(image: "bag_1-1", name: "Office Code", price: 234, color: Color(hex: 0x377095)),
    ProductItem(image: "bag_2", name: "Belt Bag", price: 220, color: Color(hex: 0xc4956e)),
    ProductItem(image: "bag_3", name: "Hang Top", price: 289, color: Color(hex: 0x989493)),
    ProductItem(image: "bag_4", name: "Old Fashion", price: 329, color: Color(hex: 0xe6b398)),
    ProductItem(image: "bag_5", name: "Red Bag", price: 299, color: Color(hex: 0xfb7883)),
    ProductItem(image: "bag_6", name: "Business Bag", price: 249, color: Color(hex: 0xaeaeae)),
]

