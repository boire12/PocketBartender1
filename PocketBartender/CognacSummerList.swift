//
//  CognacSummerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct CognacSummerList: View {
    var cognacsummer: CognacSummer = cognacsummerData[0]
    var body: some View {
        List {
            VStack {
                Image(cognacsummer.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(cognacsummer.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(cognacsummer.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct CognacSummerList_Previews: PreviewProvider {
    static var previews: some View {
        CognacSummerList()
    }
}
