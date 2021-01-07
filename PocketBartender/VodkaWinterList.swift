//
//  VodkaWinterList.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-21.
//

import SwiftUI

struct VodkaWinterList: View {
    var winter: Winter = winterData[1]
    var body: some View {
        List {
            VStack {
                Group {
                    Image(winter.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                
                Text(winter.text )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(winter.text1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(winter.text2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(winter.text3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(winter.text4)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(winter.text5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(winter.text6)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                Text(winter.text7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(winter.text8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
                Group {
                Text(winter.text9)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Text(winter.text10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                }
            }
            .navigationBarTitle(winter.title)
        }
        .listStyle(PlainListStyle())
    }
}

    


struct VodkaWinterList_Previews: PreviewProvider {
    static var previews: some View {
        VodkaWinterList()
    }
}
