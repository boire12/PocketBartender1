//
//  GinWinterList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct GinWinterList: View {
    var ginwinter: GinWinter = ginwinterData[0]
    var body: some View {
        List {
            VStack {
                Image(ginwinter.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(ginwinter.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(ginwinter.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct GinWinterList_Previews: PreviewProvider {
    static var previews: some View {
        GinWinterList()
    }
}
