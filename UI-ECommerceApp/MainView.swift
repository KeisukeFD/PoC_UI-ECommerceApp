//
//  MainView.swift
//  UI-ECommerceApp
//
//  Created by Valentin Malissen on 2020-07-19.
//

import SwiftUI

let menu: MenuItems = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dress",
    "Skirt",
]

struct MainView: View {
    @State var currentMenu: String = ""
    
    var columns: [GridItem] =
        Array(repeating: .init(.flexible(), spacing: 15), count: 2)
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Women")
                    .bold()
                    .font(.title2)
                Spacer()
            }.padding()
            .padding(.bottom, -10)

            HorizontalMenuFilterView(items: menu, current: $currentMenu)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(products, id: \.self.name) { p in
                        NavigationLink(
                            destination: ProductDetailView(product: p),
                            label: {
                                ItemCard(product: p)
                            }).buttonStyle(PlainButtonStyle())
                    }
                }.padding()
            }

            
            Spacer()

        }.navigationBarItems(leading: Image("back")
                .renderingMode(.template)
                .foregroundColor(.gray)
        ,
         trailing: HStack {
            Image("search")
                .renderingMode(.template)
                .foregroundColor(.gray)
            Spacer().frame(width: 25)
            Image("cart")
                .renderingMode(.template)
                .foregroundColor(.gray)
        })
        .navigationBarTitle(Text(""), displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
