//
//  RumSummerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct RumSummerList: View {
    var rumsummer: RumSummer = rumsummerData[0]
    var body: some View {
        List {
            VStack {
                Image(rumsummer.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(rumsummer.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(rumsummer.title)
        }
        .listStyle(PlainListStyle())
            }
}

struct RumSummerList_Previews: PreviewProvider {
    static var previews: some View {
        RumSummerList()
    }
}
