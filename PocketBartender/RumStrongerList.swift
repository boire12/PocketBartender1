//
//  RumStrongerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct RumStrongerList: View {
    var rumstronger: RumStronger = rumstrongerData[0]
    var body: some View {
        List {
            VStack {
                Image(rumstronger.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(rumstronger.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(rumstronger.title)
        }
        .listStyle(PlainListStyle())
        
    }
}

struct RumStrongerList_Previews: PreviewProvider {
    static var previews: some View {
        RumStrongerList()
    }
}
