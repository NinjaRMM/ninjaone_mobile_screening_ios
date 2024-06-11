//
//  ErrorsValidationView.swift
//  NinjaCandidate
//

import Foundation
import SwiftUI

struct ErrorsValidationView: View {
    @StateObject var viewModel = ErrorsValidationViewModel()
    
    // TODO: 
    //  - Show the user an error message for any invalid item.
    //  - Show the user a success message if all the items are valid.
    var body: some View {
        VStack(alignment: .center, spacing: 32) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Enter a valid e-mail.")
                
                TextField("", text: $viewModel.email)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Enter a valid phone number.")
                
                TextField("", text: $viewModel.phone)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Enter a valid MFA code.")
                
                TextField("", text: $viewModel.mfaCode)
            }
            
            Button("Validate") {
                viewModel.validate()
            }
            .buttonStyle(.borderedProminent)
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    ErrorsValidationView()
}
