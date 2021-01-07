//
//  TequilaSweetList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct TequilaSweetList: View {
    var tequilasweet: TequilaSweet = tequilasweetData[0]
    var body: some View {
        List {
            VStack {
                Image(tequilasweet.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(tequilasweet.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(tequilasweet.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct TequilaSweetList_Previews: PreviewProvider {
    static var previews: some View {
        TequilaSweetList()
    }
}
