//
//  CognacStrongerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct CognacStrongerList: View {
    var cognacstronger: CognacStronger = cognacstrongerData[0]
    var body: some View {
        List {
            VStack {
                Image(cognacstronger.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(cognacstronger.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(cognacstronger.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct CognacStrongerList_Previews: PreviewProvider {
    static var previews: some View {
        CognacStrongerList()
    }
}
