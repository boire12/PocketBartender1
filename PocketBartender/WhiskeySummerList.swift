//
//  WhiskeySummerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct WhiskeySummerList: View {
    var whiskeysummer: WhiskeySummer = whiskeysummerData[0]
    var body: some View {
        List {
            VStack {
                Image(whiskeysummer.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(whiskeysummer.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(whiskeysummer.title)
        }
        .listStyle(PlainListStyle())
           }
}

struct WhiskeySummerList_Previews: PreviewProvider {
    static var previews: some View {
        WhiskeySummerList()
    }
}
