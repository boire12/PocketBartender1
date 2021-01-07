//
//  RumList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-09.
//

import SwiftUI

struct RumList: View {
    var rumbase: RumBase = rumbaseData[0]
    
    var body: some View {
        List {
            VStack {
                Image(rumbase.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(rumbase.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(rumbase.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct RumList_Previews: PreviewProvider {
    static var previews: some View {
        RumList()
    }
}
