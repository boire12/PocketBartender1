//
//  GinList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-09.
//

import SwiftUI
var ginbase: GinBase = ginbaseData[0]
struct GinList: View {
    var body: some View {
        List {
            VStack {
                Image(ginbase.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(ginbase.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(ginbase.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct GinList_Previews: PreviewProvider {
    static var previews: some View {
        GinList()
    }
}
