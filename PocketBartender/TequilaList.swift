//
//  TequilaList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-09.
//

import SwiftUI

struct TequilaList: View {
    
    var tequilabase: TequilaBase = tequilabaseData[0]
    
    var body: some View {
        List {
            VStack {
                Image(tequilabase.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(tequilabase.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(tequilabase.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct TequilaList_Previews: PreviewProvider {
    static var previews: some View {
        TequilaList()
    }
}
