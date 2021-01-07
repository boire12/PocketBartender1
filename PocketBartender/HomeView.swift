//
//  HomeView.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-08.
//

import SwiftUI

struct HomeView: View {
    @State var tappedcard = -1
    @State var viewState = CGSize.zero
    @State var showProfile = false
    @State var showCard = false
    @State var homeswipe = false
    @State var login = false
    @EnvironmentObject var user: UserStore
    @Binding var show: Bool
    @Binding var active: Bool
    @Binding var activeIndex: Int
    
    var course: Course
   

    var body: some View {
        
        ZStack {
            
            ZStack {
                
                Image("pb")
                    .frame(width: screen.width, height: screen.height)
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack(alignment: .bottom) {
                       Text("Welcome Back")
                           .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        Spacer()
                        
                        LoginPageView(showProfile: $showProfile, login: $login)
                        
                        Button(action: { self.showProfile.toggle() }) {
                        Image("iTunesArtwork")
                            .resizable()
                            .frame(width: 45, height: 45)
                    }
                    }
                    .padding(.horizontal)
                    .padding(.leading, 14)
                    .padding(.top, 30)
                   
                   
//                    if  self.showProfile == true {AdminView()
//                       .fullScreenCover(isPresented: $showProfile, content: {
//                           AdminView()
//                       })}
                    
                  
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 30) {
                            ForEach(drinkData.indices) { index in
                                GeometryReader { geometry in
                                    vodkaView(drink: drinkData[index])
                                        .onTapGesture {
                                            self.tappedcard = index
                                              
                                    }
                                      
                                        .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX) / 18), axis: (x: 10, y: 20, z: 5))
                                }
                                .frame(width: 250, height: 250)
                            }
                            .padding(.trailing, 75.0)
                        }
                        .padding(30)
                        .padding(.bottom, 30)
                    }
                 Spacer()
                    
                    Extraslist()
                        .offset(y: active ?  0 :  140)
                }
                .padding(.top, 6.0)
                .frame(width: screen.width, height: screen.height)
              
                Spacer()
                
                VStack {
                    HStack(alignment: .top) {
                        Text("About the Creators")
                            .font(.title)
                        .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image("iTunesArtwork")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: showProfile ? 50 : 0)
                            .frame(height: showProfile ? 50 : 0)
                            .clipShape(Circle())
                            
                    }
                        .padding()
                    
                    Text("Enter relevant text about the creators here")
                        .foregroundColor(.white)
                    Spacer()
                    Image("iTunesArtwork")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: showProfile ? 100 : 0)
                        .frame(height: showProfile ? 100 : 0)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                }
                .frame(width: showProfile ? (screen.width - 20) : 0)
                .frame(height: showProfile ? (screen.height - 600) : 0)                   .background(Color(.secondaryLabel))
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .offset(y: screen.height - 530)
                .padding()
                .animation(.spring())

                
              
            }
//           Text("\(tappedcard)")
//            .foregroundColor(.black)
//            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            nextView(tappedcard: $tappedcard)
            
            if user.showLogin {
                ZStack {
                    loginView()
                    
                    VStack {
                        HStack {
                            Spacer()
                            
                            Image(systemName: "xmark")
                                .frame(width:45, height: 45)
                                .foregroundColor(.white)
                                .background(Color.black)
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    .padding()
                    .onTapGesture {
                        self.user.showLogin = false
                    }
                }
            }
            
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
            .environmentObject(UserStore())
    }
}



struct vodkaView: View {
    var drink: Drink
    @State var showProfile = false
    @State var viewState = CGSize.zero
    var body: some View {
        
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(drink.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(alignment: .top)
                        
                        Text(drink.text)
                            .font(.subheadline)
                            .foregroundColor(.red)
                    }
                    .padding(.horizontal, 10)
                    .padding(.top, 10)
                   
                    Spacer()
                    
                    Button( action: { self.showProfile.toggle() }) {
                        Image(drink.logo)
                            .resizable()
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal, 20)
                
                if  self.showProfile == true {VodkaView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                    .fullScreenCover(isPresented: $showProfile, content: {
                        VodkaView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                    })}
                
                drink.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(width:  screen.width - 100, height: 275, alignment: .topTrailing)
            .background(drink.color)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: drink.color.opacity(0.4), radius: 15, x: 0.0, y: 10)
                .offset(x: viewState.width, y: viewState.height)
            .animation(.spring())
        }
    }


struct nextView: View {
    @Binding var tappedcard: Int
    var body: some View{
        ZStack{
            VodkaExtras(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tappedcard == 0 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
                .padding(.top, tappedcard == 0 ? 40 : 0)
            WhiskeyExtras(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tappedcard == 1 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
                .padding(.top, tappedcard == 1 ? 40 : 0)
            RumExtras(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tappedcard == 2 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
                .padding(.top, tappedcard == 2 ? 40 : 0)
            GinExtras(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tappedcard == 3 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
                .padding(.top, tappedcard == 3 ? 40 : 0)
            CognacExtras(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tappedcard == 4 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
                .padding(.top, tappedcard == 4 ? 40 : 0)
            TequilaExtras(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tappedcard == 5 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
                .padding(.top, tappedcard == 5 ? 40 : 0)
            MocktailView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .opacity(tappedcard == 6 ? 1 : 0)
                .animation(.easeIn(duration: 0.4))
        }
    }
}

struct Drink: Identifiable {
     var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: Image
    var color: Color
}
let drinkData = [
    Drink(title: "Vodka", text: "Vodka based cocktails made easy", logo: "iTunesArtwork", image: Image(uiImage: #imageLiteral(resourceName: "vodka")), color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))),
    Drink(title: "Whiskey", text: "Vodka based cocktails made easy", logo: "iTunesArtwork", image: Image(uiImage: #imageLiteral(resourceName: "whiskey")), color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))),
    Drink(title: "Rum", text: "Vodka based cocktails made easy", logo: "iTunesArtwork", image: Image(uiImage: #imageLiteral(resourceName: "cognac")), color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))),
    Drink(title: "Gin", text: "Vodka based cocktails made easy", logo: "iTunesArtwork", image: Image(uiImage: #imageLiteral(resourceName: "rum")), color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))),
    Drink(title: "Cognac", text: "Vodka based cocktails made easy", logo: "iTunesArtwork", image: Image(uiImage: #imageLiteral(resourceName: "cognac")), color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))),
    Drink(title: "Tequila", text: "Vodka based cocktails made easy", logo: "iTunesArtwork", image: Image(uiImage: #imageLiteral(resourceName: "mocktail")), color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))),
    Drink(title: "Mocktails", text: "Vodka based cocktails made easy", logo: "iTunesArtwork", image: Image(uiImage: #imageLiteral(resourceName: "tequila")), color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))),
]







struct LoginPageView: View {
    @Binding var showProfile: Bool
    @Binding var login: Bool
    @EnvironmentObject var user: UserStore
    var body: some View {
      
        VStack {
            if user.isLogged {
                Button(action: { self.login.toggle() }) {
                    Image(systemName: "person")
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                    
                
                }
            } else {
                Button(action: { self.user.showLogin.toggle() }) {
                    Image(systemName: "person")
                        .foregroundColor(.primary)
                        .font(.system(size: 20, weight: .medium))
                        .frame(width: 45, height: 45)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.white.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.white.opacity(0.3), radius: 10, x: 0, y: 10)
                    
                }
            }
        }
    }
}

let screen = UIScreen.main.bounds
