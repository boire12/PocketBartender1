//
//  WhiskeySweetList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct WhiskeySweetList: View {
    var whiskeysweet: WhiskeySweet = whiskeysweetData[0]
    var body: some View {
        List {
            VStack {
                Image(whiskeysweet.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(whiskeysweet.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(whiskeysweet.title)
        }
        .listStyle(PlainListStyle())
            }
}

struct WhiskeySweetList_Previews: PreviewProvider {
    static var previews: some View {
        WhiskeySweetList()
    }
}
