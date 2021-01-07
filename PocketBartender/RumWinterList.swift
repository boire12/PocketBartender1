//
//  RumWinterList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct RumWinterList: View {
    var rumwinter: RumWinter = rumwinterData[0]
    var body: some View {
        List {
            VStack {
                Image(rumwinter.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(rumwinter.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(rumwinter.title)
        }
        .listStyle(PlainListStyle())
        
    }
}

struct RumWinterList_Previews: PreviewProvider {
    static var previews: some View {
        RumWinterList()
    }
}
