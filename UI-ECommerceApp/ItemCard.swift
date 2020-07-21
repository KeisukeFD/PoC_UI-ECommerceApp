//
//  ItemCard.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-20.
//

import SwiftUI


struct ItemCard: View {
    var product: ProductItem
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle()
                    .fill(product.color)

                Image("\(product.image)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140)
            }.cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("\(product.name)")
                    .foregroundColor(.gray)
                    .padding(.bottom, 4)
                
                Text("$\(String(format: "%.f", product.price))")
                    .font(.system(size: 14))
                    .bold()
            }
            .padding(.leading)
        }.padding(.bottom)
        .background(Color.white)
        .frame(height: 240)
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard(product: products[0])
    }
}
