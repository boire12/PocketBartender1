//
//  WhiskeyExtras.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-22.
//

import SwiftUI

struct WhiskeyExtras: View {
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
                        ForEach(nextData.indices) { index in
                            GeometryReader { geometry in
                                listView(next: nextData[index])
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
            addView(tap: $tap)
        }
        
    }
}

struct WhiskeyExtras_Previews: PreviewProvider {
    static var previews: some View {
        WhiskeyExtras(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
    }
}

struct listView: View {
    var next: Next
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack {
                    Text(next.title)
                    
                    Text(next.subtitle)
                        .font(.subheadline)
                        
                        .padding()
                }
                Spacer()
                Image(uiImage: next.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                    
                    .padding()
            }
            Image(uiImage: next.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        }
        .frame(width: 275, height: 275)
        .background(Color(next.color))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
        
        .padding(.all, 40)
    }
}

struct addView: View {
    @Binding var tap: Int
    var body: some View {
        ZStack {
            WhiskeyView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tap == 0 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
            WhiskeyWinterView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0], whiskeywinter: whiskeywinterData[0])
                .opacity(tap == 1 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
            WhiskeySummerView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0], whiskeysummer: whiskeysummerData[0])
                .opacity(tap == 2 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
            WhiskeyStrongerView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0], whiskeystronger: whiskeystrongerData[0])
                .opacity(tap == 3 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
            WhiskeySweetView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0], whiskeysweet: whiskeysweetData[0])
                    .opacity(tap == 4 ? 1 : 0)
                    .animation(.easeIn(duration: 0.4))
        }
    }
}

struct Next: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var logo: UIImage
    var image: UIImage
    var color: UIColor
}

let nextData = [
    Next(title: "Classics", subtitle: "Classic whiskey based cocktails", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    Next(title: "Winter Specials", subtitle: "Winter themed whiskey based cocktails", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    Next(title: "Summer Specials", subtitle: "Summer themed whiskey based cocktails", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    Next(title: "Stronger", subtitle: "Whiskey based cocktails in a shorter glass", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    Next(title: "Sweet", subtitle: "Whiskey based cocktails for a sweet tooth", logo: #imageLiteral(resourceName: "iTunesArtwork"), image: #imageLiteral(resourceName: "whiskey"), color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    
]
