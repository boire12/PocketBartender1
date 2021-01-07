//
//  AdminView.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-06.
//

import SwiftUI

struct AdminView: View {
    @State var showProfile = false
    @EnvironmentObject var user: UserStore
    @Binding var show: Bool
    @Binding var active: Bool
    @Binding var  activeIndex: Int
    var course: Course
    var body: some View {
        ZStack {
            Image("pb")
                .edgesIgnoringSafeArea(.bottom)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .opacity(0.2)
             
            VStack {
                HStack(alignment: .top) {
                    Text("Welcome Back")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button(action: { self.showProfile.toggle() }) {
                        Image("iTunesArtwork")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 375.0)
                
              
                Spacer()
                
            }
            .padding(.top, 20.0)
            
            if  self.showProfile == true {HomeView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
                .fullScreenCover(isPresented: $showProfile, content: {
                    HomeView(show: $show, active: $active, activeIndex: $activeIndex, course: course)
                })}
        }
    }
}

struct AdminView_Previews: PreviewProvider {
    static var previews: some View {
        AdminView(show: .constant(false), active: .constant(false), activeIndex: .constant(-1), course: courseData[0])
    }
}
