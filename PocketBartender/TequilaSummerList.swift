//
//  TequilaSummerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct TequilaSummerList: View {
    var tequilasummer: TequilaSummer = tequilasummerData[0]
    var body: some View {
        List {
            VStack {
                Image(tequilasummer.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(tequilasummer.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(tequilasummer.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct TequilaSummerList_Previews: PreviewProvider {
    static var previews: some View {
        TequilaSummerList()
    }
}
