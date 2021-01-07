//
//  GinSweetList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct GinSweetList: View {
    var ginsweet: GinSweet = ginsweetData[0]
    var body: some View {
        List {
            VStack {
                Image(ginsweet.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(ginsweet.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(ginsweet.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct GinSweetList_Previews: PreviewProvider {
    static var previews: some View {
        GinSweetList()
    }
}
