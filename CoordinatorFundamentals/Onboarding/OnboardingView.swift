//
//  OnboardingView.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var doneRequested: () -> ()
    
    var body: some View {
        TabView {
ScaledImageVIew(name: "dog")
                .tag(0)
ScaledImageVIew(name: "cat")
                .tag(1)
ScaledImageVIew(name: "eagle")
                .tag(2)
            Button("Done") {
                doneRequested()
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black.ignoresSafeArea())
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(doneRequested: {
            
        } )
    }
}
