//
//  VodkaSweetList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-21.
//

import SwiftUI

struct VodkaSweetList: View {
    var sweet: Sweet = sweetData[0]
    var body: some View {
        List {
            VStack {
                Group {
                    Image(sweet.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                
                Text(sweet.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(sweet.text1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(sweet.text2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(sweet.text3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(sweet.text4)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(sweet.text5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(sweet.text6)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(sweet.text7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(sweet.text8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
                Group {
                Text(sweet.text9)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(sweet.text10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
            }
            .navigationBarTitle(sweet.title)
        }
        .listStyle(PlainListStyle())


    }
}

struct VodkaSweetList_Previews: PreviewProvider {
    static var previews: some View {
        VodkaSweetList()
    }
}
