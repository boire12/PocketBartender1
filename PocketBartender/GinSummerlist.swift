//
//  GinSummerlist.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct GinSummerlist: View {
    var ginsummer: GinSummer = ginsummerData[0]
    var body: some View {
        List {
            VStack {
                Image(ginsummer.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(ginsummer.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(ginsummer.title)
        }
        .listStyle(PlainListStyle())
        
    }
}

struct GinSummerlist_Previews: PreviewProvider {
    static var previews: some View {
        GinSummerlist()
    }
}
