//
//  RumSweetList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct RumSweetList: View {
    var rumsweet: RumSweet = rumsweetData[0]
    var body: some View {
        List {
            VStack {
                Image(rumsweet.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(rumsweet.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(rumsweet.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct RumSweetList_Previews: PreviewProvider {
    static var previews: some View {
        RumSweetList()
    }
}
