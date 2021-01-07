//
//  VodkaSummerList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-21.
//

import SwiftUI

struct VodkaSummerList: View {
    var summer: Summer = summerData[0]
    var body: some View {
        List {
            VStack {
                Group {
                    Image(summer.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                
                Text(summer.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(summer.text1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(summer.text2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(summer.text3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(summer.text4)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(summer.text5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(summer.text6)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(summer.text7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(summer.text8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
                Group {
                Text(summer.text9)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(summer.text10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
            }
            .navigationBarTitle(summer.title)
        }
        .listStyle(PlainListStyle())

    }
}

struct VodkaSummerList_Previews: PreviewProvider {
    static var previews: some View {
        VodkaSummerList()
    }
}
