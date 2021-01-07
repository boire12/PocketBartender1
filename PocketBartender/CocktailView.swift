//
//  CocktailView.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-06.
//

import SwiftUI

struct CocktailView: View {
    var cocktail: Cocktail = cocktailData[1]
    
    var body: some View {
        List {
            VStack {
                Group {
                    Image(cocktail.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                
                Text(cocktail.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(cocktail.text1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(cocktail.text2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(cocktail.text3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(cocktail.text4)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(cocktail.text5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(cocktail.text6)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(cocktail.text7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(cocktail.text8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
                Group {
                Text(cocktail.text9)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(cocktail.text10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
            }
            .navigationBarTitle(cocktail.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct CocktailView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailView()
    }
}
