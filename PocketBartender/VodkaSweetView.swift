//
//  VodkaSweetView.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-21.
//

import SwiftUI

struct VodkaSweetView: View {
    @State var showProfile = false
    @EnvironmentObject var user: UserStore
    @Binding var show: Bool
    @Binding var active: Bool
    @Binding var activeIndex: Int
    var course: Course
    var sweet: Sweet
    
    var body: some View {
        ZStack {
          
            NavigationView {
                List(sweetData) { sweet in
                    NavigationLink(destination: VodkaSweetList(sweet: sweet))   {
                        HStack {
                                        
                                        Image(sweet.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 80)
                                            .background(Color.black)
                                            .cornerRadius(20)
                                            .padding(.trailing, 4)
                                        
                                        VStack(alignment: .leading) {
                                           
                                            Text(sweet.title)
                                                .font(.system(size: 18, weight: .bold))
                                            
                                            Text(sweet.text)
                                                .lineLimit(1)
                                                .font(.subheadline)
                                                .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
                .navigationBarTitle(Text("Sweet Cocktails"))
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

struct VodkaSweetView_Previews: PreviewProvider {
    static var previews: some View {
        VodkaSweetView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0], sweet: sweetData[0])
    }
}

struct Sweet: Identifiable {
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

let sweetData = [
    Sweet(image: "vodka", title: "ex 1.", text: "", text1: "Ingredients", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Sweet(image: "vodka", title: "Moscow Mule", text: "Description.", text1: "Ingredients", text2: "ingredient list", text3: "Step 1.", text4: "directions for step 1", text5: "Step 2.", text6: "directions for step 2", text7: "Step 3.", text8: "directions for step 3.", text9: "Step 4.", text10: "directions for step 4"),
    Sweet(image: "vodka", title: "name of cocktail 3", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Sweet(image: "vodka", title: "name of cocktail 4", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Sweet(image: "vodka", title: "name of cocktail 5", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Sweet(image: "vodka", title: "name of cocktail 6", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Sweet(image: "vodka", title: "name of cocktail 7", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Sweet(image: "vodka", title: "name of cocktail 8", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Sweet(image: "vodka", title: "name of cocktail 9", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text"),
    Sweet(image: "vodka", title: "name of cocktail 10", text: "directions to create example cocktail", text1: "text", text2: "text", text3: "text", text4: "text", text5: "text", text6: "text", text7: "text", text8: "text", text9: "text", text10: "text")
    
]
