//
//  VodkaStrongerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-21.
//

import SwiftUI

struct VodkaStrongerList: View {
    var stronger: Stronger = strongerData[0]
    var body: some View {
        List {
            VStack {
                Group {
                    Image(stronger.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                
                Text(stronger.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(stronger.text1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(stronger.text2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(stronger.text3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(stronger.text4)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(stronger.text5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(stronger.text6)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(stronger.text7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(stronger.text8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
                Group {
                Text(stronger.text9)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(stronger.text10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
            }
            .navigationBarTitle(stronger.title)
        }
        .listStyle(PlainListStyle())

    }
}

struct VodkaStrongerList_Previews: PreviewProvider {
    static var previews: some View {
        VodkaStrongerList()
    }
}
