//
//  WHiskeyWinterList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct WHiskeyWinterList: View {
    var whiskeywinter: WhiskeyWinter = whiskeywinterData[0]
    var body: some View {
        List {
            VStack {
                Image(whiskeywinter.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(whiskeywinter.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(whiskeywinter.title)
        }
        .listStyle(PlainListStyle())
       
    }
}

struct WHiskeyWinterList_Previews: PreviewProvider {
    static var previews: some View {
        WHiskeyWinterList()
    }
}
