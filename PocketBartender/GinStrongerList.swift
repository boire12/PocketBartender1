//
//  GinStrongerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct GinStrongerList: View {
    var ginstronger: GinStronger = ginstrongerData[0]
    var body: some View {
        List {
            VStack {
                Image(ginstronger.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(ginstronger.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(ginstronger.title)
        }
        .listStyle(PlainListStyle())
        
    }
}

struct GinStrongerList_Previews: PreviewProvider {
    static var previews: some View {
        GinStrongerList()
    }
}
