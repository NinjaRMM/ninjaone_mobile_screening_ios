//
//  ErrorsValidationViewModel.swift
//  NinjaCandidate
//

import Foundation
import SwiftUI

class ErrorsValidationViewModel: ObservableObject {
    @Published var email = ""
    @Published var phone = ""
    @Published var mfaCode = ""

    // TODO: - Validate these three items using a custom Error type, and expose the validation result to the view.
    // E-mail: Must be in normal format such as username@domain.com
    // Phone: Must be exactly 10 digits. The user can enter hyphens, but any non-numerical chars can be removed.
    // MFA code: Must be exactly 6 digits.
    func validate() {
        // Code here
    }
}
