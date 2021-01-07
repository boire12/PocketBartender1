//
//  WhiskeyStrongerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct WhiskeyStrongerList: View {
    var whiskeystronger: WhiskeyStronger = whiskeystrongerData[0]
    var body: some View {
        List {
            VStack {
                Image(whiskeystronger.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(whiskeystronger.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(whiskeystronger.title)
        }
        .listStyle(PlainListStyle())
        
    }
}

struct WhiskeyStrongerList_Previews: PreviewProvider {
    static var previews: some View {
        WhiskeyStrongerList()
    }
}
