//
//  ScaledImageVIew.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import SwiftUI

struct ScaledImageVIew: View {
    let name: String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
}

//struct ScaledImageVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        ScaledImageVIew()
//    }
}
