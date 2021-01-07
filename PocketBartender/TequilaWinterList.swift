//
//  TequilaWinterList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct TequilaWinterList: View {
    var tequilawinter: TequilaWinter = tequilawinterData[0]
    var body: some View {
        List {
            VStack {
                Image(tequilawinter.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(tequilawinter.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(tequilawinter.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct TequilaWinterList_Previews: PreviewProvider {
    static var previews: some View {
        TequilaWinterList()
    }
}
