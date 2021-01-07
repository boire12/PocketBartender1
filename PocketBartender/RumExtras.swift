//
//  RumExtras.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct RumExtras: View {
    
    @State var tap = -1
    @State var goBack = false
    @EnvironmentObject var user: UserStore
    @Binding var show: Bool
    @Binding var active: Bool
    @Binding var activeIndex: Int
    var course: Course
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    
                
            VStack {
                HStack {
                    Text("Welcome Back")
                        
                        .font(.largeTitle)
                    Spacer()
                    Button(action: {self.goBack.toggle() }) {
                    Image(uiImage: #imageLiteral(resourceName: "iTunesArtwork"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    if  self.goBack == true {HomeView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
                        .fullScreenCover(isPresented: $goBack, content: {
                        HomeView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
                       })}
                        
                }
                .padding(.horizontal, 50)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(followingData.indices) { index in
                            GeometryReader { geometry in
                                stackView(following: followingData[index])
                                    .onTapGesture {
                                        self.tap = index
                                          
                                }
                                
                                    .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minY) / 15), axis: (x: 10, y: 20, z: 5))
                            }
                            .frame(width: 275, height: 275)
                        }
                        .padding(50.0)
                    }
                    .padding(30)
                    .padding(.bottom, 30)
                }
            }
            newView(tap: $tap)
        }
      
    }
}

struct RumExtras_Previews: PreviewProvider {
    static var previews: some View {
        RumExtras(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
    }
}

struct stackView: View {
    var following: Following
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack {
                    Text(following.title)
                    
                    Text(following.subtitle)
                        .font(.subheadline)
                        
                        .padding()
                }
                Spacer()
                Image(uiImage: following.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                    
                    .padding()
            }
            Image(uiImage: following.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        }
        .frame(width: 275, height: 275)
        .background(Color(following.color))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
        
        .padding(.all, 40)
    }
}

struct newView: View {
    @Binding var tap: Int
    var body: some View {
        ZStack {
            RumView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tap == 0 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
            RumWinterView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tap == 1 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
            RumSummerView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tap == 2 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
            RumStrongerView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tap == 3 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
            RumSweetView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                    .opacity(tap == 4 ? 1 : 0)
                    .animation(.easeIn(duration: 0.4))
        }
    }
}


struct Following: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var logo: UIImage
    var image: UIImage
    var color: UIColor
}

let followingData = [
    Following(title: "Classics", subtitle: "Classic rum based cocktails", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    Following(title: "Winter Specials", subtitle: "Winter themed rum based cocktails", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    Following(title: "Summer Specials", subtitle: "Summer themed rum based cocktails", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    Following(title: "Stronger", subtitle: "Rum based cocktails in a shorter glass", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    Following(title: "Sweet", subtitle: "Rum based cocktails for a sweet tooth", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    
]
