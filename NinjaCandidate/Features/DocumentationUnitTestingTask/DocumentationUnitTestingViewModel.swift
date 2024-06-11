//
//  SecondTaskViewModel.swift
//  NinjaCandidate
//

import Foundation

enum CalculatedResult {
    case squareFootage(Double)
    case cubicVolume(Double)
    
    var label: String {
        switch self {
        case .squareFootage:
            " feet squared"
        case .cubicVolume:
            " feet cubed"
        }
    }
}

class DocumentationUnitTestingViewModel: ObservableObject {    
    func calculateSquareFootageOrCubicVolume(side1LengthInFeet: Double, side2LengthInFeet: Double, side3LengthInFeet: Double?) -> CalculatedResult {
        // TODO: - Replace the next line with logic to return square footage (if only side 1 and side 2 are provided) or cubic volume (if side 3 is also provided). If needed, write helper functions.
        return .squareFootage(0)

        // TODO: - In NinjaCandidateTests.swift, write unit test(s) for this function. Make sure to think about various scenarios and edge cases.
        
        // TODO: - Add markdown documentation for this method, including descriptions of parameters and return values.
    }
}
