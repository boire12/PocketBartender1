//
//  LoadingView.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-14.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            LottieView(fileName: "success lottie").frame(width: 200, height: 200)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
