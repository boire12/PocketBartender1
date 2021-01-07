//
//  VodkaView.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-06.
//

import SwiftUI

struct VodkaView: View {
    @State var showProfile = false
    @State var drag = CGSize.zero
    @EnvironmentObject var user: UserStore
    @Binding var show: Bool
    @Binding var active: Bool
    @Binding var activeIndex: Int
    var course: Course
    
    var body: some View {
            
        ZStack {
          
            NavigationView {
                List(cocktailData) { cocktail in
                    NavigationLink(destination: CocktailView(cocktail: cocktail)) {
                        HStack {
                            
                            Image(cocktail.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 80)
                                .background(Color.black)
                                .cornerRadius(20)
                                .padding(.trailing, 4)
                            
                            VStack(alignment: .leading) {
                               
                                Text(cocktail.title)
                                    .font(.system(size: 18, weight: .bold))
                                
                                Text(cocktail.text)
                                    .lineLimit(1)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
                .navigationBarTitle(Text("Vodka Classics"))
                
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


struct VodkaView_Previews: PreviewProvider {
    static var previews: some View {
        VodkaView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
    }
}

struct Cocktail: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var text1: String
    var text2: String
    var text3: String
    var text4: String
    var text5: String
    var text6: String
    var text7: String
    var text8: String
    var text9: String
    var text10: String
}

let cocktailData = [
    Cocktail(image: "vodka", title: "Vodka Paralyzer", text: "", text1: "Ingredients", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Cocktail(image: "vodka", title: "Moscow Mule", text: "This simple cocktail is refreshing on a patio during the summer or equally enjoyed by the fire during the winter. It is surprisingly easy to make, but, it will be sure to excite your friends and family with just a few simple ingredients.", text1: "Ingredients", text2: "For this recipe you will need vodka of your choosing (however we reccomend cherry vodka), 4 0z of ginger beer, fresh lime juice, and of course to complete the traditional look and feel you will need a copper mug however it is not neccesary.", text3: "Step 1.", text4: "Your going to start by filling your copper mug with ice.", text5: "Step 2.", text6: "Next, pour in 2 0z of vodka.", text7: "Step 3.", text8: "Top with 4 0z of ginger beer.", text9: "Step 4.", text10: "Finally, squeeze in fresh lime juice from a wedge of lime."),
    Cocktail(image: "vodka", title: "name of cocktail 3", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Cocktail(image: "vodka", title: "name of cocktail 4", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Cocktail(image: "vodka", title: "name of cocktail 5", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Cocktail(image: "vodka", title: "name of cocktail 6", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Cocktail(image: "vodka", title: "name of cocktail 7", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Cocktail(image: "vodka", title: "name of cocktail 8", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Cocktail(image: "vodka", title: "name of cocktail 9", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Cocktail(image: "vodka", title: "name of cocktail 10", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text")
    
]


