//
//  CognacWinterList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct CognacWinterList: View {
    var cognacwinter: CognacWinter = cognacwinterData[0]
    var body: some View {
        List {
            VStack {
                Image(cognacwinter.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(cognacwinter.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(cognacwinter.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct CognacWinterList_Previews: PreviewProvider {
    static var previews: some View {
        CognacWinterList()
    }
}
