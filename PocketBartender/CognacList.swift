//
//  CognacList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-09.
//

import SwiftUI
var cognacbase: CognacBase = cognacbaseData[0]
struct CognacList: View {
    var body: some View {
        List {
            VStack {
                Image(cognacbase.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(cognacbase.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(cognacbase.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct CognacList_Previews: PreviewProvider {
    static var previews: some View {
        CognacList()
    }
}
