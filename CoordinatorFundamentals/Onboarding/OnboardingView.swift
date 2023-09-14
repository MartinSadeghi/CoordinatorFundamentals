//
//  OnboardingView.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            Image("dog")
                .resizable()
//                .scaledToFit()
                .tag(0)
            Image("cat")
                .tag(1)
            Image("eagle")
                .tag(2)
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black.ignoresSafeArea())
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
