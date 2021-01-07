//
//  WhiskeyWinterView.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct WhiskeyWinterView: View {
    @State var showProfile = false
    @EnvironmentObject var user: UserStore
    @Binding var show: Bool
    @Binding var active: Bool
    @Binding var activeIndex: Int
    
    var course: Course
    var whiskeywinter: WhiskeyWinter
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List(whiskeywinterData) { whiskeywinter in
                    NavigationLink(destination: WHiskeyWinterList()) {
                        HStack {
                            
                            Image(whiskeywinter.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 80)
                                .background(Color.black)
                                .cornerRadius(20)
                                .padding(.trailing, 4)
                            
                            VStack(alignment: .leading) {
                                
                                Text(whiskeywinter.title)
                                    .font(.system(size: 18, weight: .bold))
                                
                                Text(whiskeywinter.text)
                                    .lineLimit(1)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
                .navigationBarTitle(Text("Winter Specials"))
            }
            Button(action:  { self.showProfile.toggle() }) {
                Image("iTunesArtwork")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
            }
            .offset(x: 140, y: -350)
            if  self.showProfile == true {HomeView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
               .fullScreenCover(isPresented: $showProfile, content: {
                   HomeView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
               })}
        }
    }
}

struct WhiskeyWinterView_Previews: PreviewProvider {
    static var previews: some View {
        WhiskeyWinterView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0], whiskeywinter: whiskeywinterData[0])
    }
}

struct WhiskeyWinter: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
}

let whiskeywinterData = [
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 1", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 2", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 3", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 4", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 5", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 6", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 7", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 8", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 9", text: "directions to create example cocktail" ),
    WhiskeyWinter(image: "whiskey", title: "name of cocktail 10", text: "directions to create example cocktail" ),
    
]
