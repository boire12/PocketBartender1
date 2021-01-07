//
//  WhiskeyList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-09.
//

import SwiftUI


struct WhiskeyList: View {
    var whiskeybase: WhiskeyBase = whiskeybaseData[0]
    
    var body: some View {
        List {
            VStack {
                Image(whiskeybase.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(whiskeybase.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(whiskeybase.title)
        }
        .listStyle(PlainListStyle())
       
    }
}

struct WhiskeyList_Previews: PreviewProvider {
    static var previews: some View {
        WhiskeyList()
    }
}
