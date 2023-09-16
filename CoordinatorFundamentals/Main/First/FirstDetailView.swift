//
//  FirstDetailView.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import SwiftUI

struct FirstDetailView: View {
    
    @ObservedObject var viewModel: FirstTabViewModel
    
    
    var body: some View {
        VStack {
            Text("First detail")
            
            TextField("name", text: $viewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("email", text: $viewModel.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDetailView(viewModel: FirstTabViewModel())
    }
}
