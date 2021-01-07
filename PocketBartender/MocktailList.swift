//
//  MocktailList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-09.
//

import SwiftUI
var mocktailbase: MocktailBase = mocktailbaseData[0]
struct MocktailList: View {
    var body: some View {
        List {
            VStack {
                Image(mocktailbase.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(mocktailbase.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(mocktailbase.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct MocktailList_Previews: PreviewProvider {
    static var previews: some View {
        MocktailList()
    }
}
