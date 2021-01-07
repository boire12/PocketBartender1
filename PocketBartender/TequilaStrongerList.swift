//
//  TequilaStrongerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct TequilaStrongerList: View {
    var tequilastronger: TequilaStronger = tequilastrongerData[0]
    var body: some View {
        List {
            VStack {
                Image(tequilastronger.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(tequilastronger.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(tequilastronger.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct TequilaStrongerList_Previews: PreviewProvider {
    static var previews: some View {
        TequilaStrongerList()
    }
}
