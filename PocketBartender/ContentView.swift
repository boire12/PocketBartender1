//
//  ContentView.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-04.
//

import SwiftUI

struct ContentView: View {
    @State var viewState = CGSize.zero
    @State var showCard = false
    @State var showProfile = false
    @EnvironmentObject var user: UserStore
    @Binding var show: Bool
    @Binding var active: Bool
    @Binding var activeIndex: Int
    
    var course: Course
    
    
    var body: some View {
        
                ZStack {
                       
                    ZStack {
                         VStack {
                            HStack {
                                Text("Welcome Back")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .fontWeight(.bold)
                                Spacer()
                                Admin(showProfile: $showProfile)
                            }
                            .padding()
                            if  self.showProfile == true {AdminView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
                                .fullScreenCover(isPresented: $showProfile, content: {
                                    AdminView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
                                })}
                            
                            
                            Image("background")
                                .edgesIgnoringSafeArea(.bottom)
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            Spacer()
                            
                        }
                        .padding(.top, 20.0)
                    
                    }
                    .blur(radius: showCard  ?  20 : 0)
                    
                        
                    
                    
                    
                    
                        Mocktails()
                                    .frame(width: showCard ? 375 : 325, height: 225, alignment: .topTrailing)
                                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                                    .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 10)
                                    .offset(x: 0, y: showCard ? -670 : -120)
                                    .offset(x: viewState.width, y: viewState.height)
                                    .scaleEffect(showCard ? 1 : 0.7)
                                    .rotationEffect(Angle(degrees: showCard ? 0 : 12))
                                    .rotation3DEffect(Angle(degrees: 12), axis: (x: 10 , y: 0, z: 0))
                            .animation(.spring())
                    
                    
                            Tequila()
                                .frame(width: showCard ? 375 : 325, height: 225, alignment: .topTrailing)
                                .background(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 10)
                                .offset(x: 0, y: showCard ? -560 : -100)
                                .offset(x: viewState.width, y: viewState.height)
                                .scaleEffect(showCard ? 1 : 0.75)
                                .rotationEffect(Angle(degrees: showCard ? 0 : 10))
                                .rotation3DEffect(Angle(degrees: 10), axis: (x: 10 , y: 0, z: 0))
                                .animation(.spring())

                            Cognac()
                                .frame(width: showCard ? 375 : 325, height: 225, alignment: .topTrailing)
                                .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 10)
                                .offset(x: 0, y: showCard ? -450 : -80)
                                .offset(x: viewState.width, y: viewState.height)
                                .scaleEffect(showCard ? 1 : 0.8)
                                .rotationEffect(Angle(degrees: showCard ? 0 :  8))
                                .rotation3DEffect(Angle(degrees: 8), axis: (x: 10 , y: 0, z: 0))
                                .animation(.spring())
                    
                            Gin()
                                .frame(width: showCard ? 375 : 325, height: 225, alignment: .topTrailing)
                                .background(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 10)
                                .offset(x: 0, y: showCard ? -340 : -60)
                                .offset(x: viewState.width, y: viewState.height)
                                .scaleEffect(showCard ? 1 : 0.85)
                                .rotationEffect(Angle(degrees: showCard ? 0 :  6))
                                .rotation3DEffect(Angle(degrees: 6), axis: (x: 10 , y: 0, z: 0))
                                .animation(.spring())
                    
                            Rum()
                                .frame(width: showCard ? 375 : 325, height: 225, alignment: .topTrailing)
                                .background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 10)
                                .offset(x: 0, y: showCard ? -230 : -40)
                                .offset(x: viewState.width, y: viewState.height)
                                .scaleEffect(showCard ? 1 : 0.9)
                                .rotationEffect(Angle(degrees: showCard ? 0 :  4))
                                .rotation3DEffect(Angle(degrees: 4), axis: (x: 10 , y: 0, z: 0))
                                .animation(.spring())

                        
                            Whiskey()
                                .frame(width: showCard ? 375 : 325, height: 225, alignment: .topTrailing)
                                .background(Color(#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                                .shadow(radius: 10)
                                .offset(x: 0, y: showCard ? -120 : -20.0)
                                .offset(x: viewState.width, y: viewState.height)
                                .scaleEffect(showCard ? 1 : 0.95)
                                .rotationEffect(Angle(degrees: showCard ? 0 : 2))
                                .rotation3DEffect(Angle(degrees: 2), axis: (x: 10 , y: 0, z: 0))
                                .animation(.spring())

                   
                    
                        Vodka()
                                .frame(width: showCard ? 375 : 325, height: 225, alignment: .topTrailing)
                                .background(Color.black)
    //                            .cornerRadius(20)
                                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 10)
                                .offset(x: viewState.width, y: viewState.height)
                                .animation(.spring())
                                .onTapGesture {
                                    self.showCard.toggle()
                                   
                                }
                                .gesture(
                                    DragGesture().onChanged{ value in
                                        self.viewState = value.translation
                                        self.show = true
                                    }
                                    .onEnded { value in
                                        self.viewState = .zero
                                        self.show = false
                                    }
                            )
                    }
                    if  self.showProfile == true {AdminView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
                        .fullScreenCover(isPresented: $showProfile, content: {
                            AdminView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
                        })}
                
                }
                
            }
        
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
    }
}
struct Vodka: View {
    @State var showProfile = false
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Vodka")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Vodka based coktails made easy")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                Spacer()
                Button( action: { self.showProfile.toggle() }) {
                    Image(uiImage: #imageLiteral(resourceName: "Icon-App-60x60"))
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                }
            }
            .padding(.horizontal, 10)
            if  self.showProfile == true {VodkaView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                .fullScreenCover(isPresented: $showProfile, content: {
                    VodkaView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
                })}

            Image("vodka")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        
    }
}

struct Whiskey: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Whiskey")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Quick and dirty whiskey based cocktails")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "ItunesArtwork"))
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 10)
            Image("whiskey")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct Rum: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Rum")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Rum based coktails so you can have a little fun")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "ItunesArtwork"))
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 10)
            Image("rum")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct Gin: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Gin")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Gin based coktails so you can call tonight a win")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "ItunesArtwork"))
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 10)
            Image("gin")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct Cognac: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Cognac")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Cognac based coktails for when your feeling boujee")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "ItunesArtwork"))
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 10)
            Image("cognac")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct Tequila: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Tequila")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Tequila based coktails for when sh*ts getting wild")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "ItunesArtwork"))
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 10)
            Image("tequila")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct Mocktails: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Mocktails")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Alcohol free coktails you can always enjoy")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "ItunesArtwork"))
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 10)
            Image("mocktail")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
        }
    }
}


struct Admin: View {
    @Binding var showProfile: Bool
    var body: some View {
        Button(action: { self.showProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .frame(width: 35, height: 35)
        }
    }
}
