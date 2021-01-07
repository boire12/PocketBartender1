//
//  CognacSweetList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct CognacSweetList: View {
    var cognacsweet: CognacSweet = cognacsweetData[0]
    var body: some View {
        List {
            VStack {
                Image(cognacsweet.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(cognacsweet.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(cognacsweet.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct CognacSweetList_Previews: PreviewProvider {
    static var previews: some View {
        CognacSweetList()
    }
}
