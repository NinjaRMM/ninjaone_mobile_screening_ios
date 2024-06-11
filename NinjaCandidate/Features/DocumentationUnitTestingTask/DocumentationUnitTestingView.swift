//
//  FirstTaskView.swift
//  NinjaCandidate
//

import Foundation
import SwiftUI

struct DocumentationUnitTestingView: View {
    @StateObject var viewModel = DocumentationUnitTestingViewModel()
    
    @State var side1LengthInFeet: String = ""
    @State var side2LengthInFeet: String = ""
    @State var side3LengthInFeet: String = ""
    @State var calculatedResult: CalculatedResult?
    
    private var sidesAreValidDoubles: Bool {
        if side3LengthInFeet.isEmpty {
            return Double(side1LengthInFeet) != nil && Double(side2LengthInFeet) != nil
        } else {
            return Double(side1LengthInFeet) != nil && Double(side2LengthInFeet) != nil && Double(side3LengthInFeet) != nil
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 32) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Length of side 1 in feet")
                
                TextField("", text: $side1LengthInFeet)
                    .keyboardType(.decimalPad)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Length of side 2 in feet")
                
                TextField("", text: $side2LengthInFeet)
                    .keyboardType(.decimalPad)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Length of side 3 in feet (Optional)")
                
                TextField("", text: $side3LengthInFeet)
                    .keyboardType(.decimalPad)
            }
            
            
            Button(side3LengthInFeet.isEmpty ? "Calculate Square Footage" : "Calculate Cubic Volume") {
                calculatedResult = viewModel.calculateSquareFootageOrCubicVolume(
                    side1LengthInFeet: Double(side1LengthInFeet) ?? 0,
                    side2LengthInFeet: Double(side2LengthInFeet) ?? 0,
                    side3LengthInFeet: Double(side3LengthInFeet)
                )
            }
            .disabled(!sidesAreValidDoubles)
            .buttonStyle(.borderedProminent)
            
            if let calculatedResult {
                switch calculatedResult {
                case .squareFootage(let footage):
                    Text("Result: \(footage) \(calculatedResult.label)")
                case .cubicVolume(let volume):
                    Text("Result: \(volume) \(calculatedResult.label)")
                }
            }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    ErrorsValidationView()
}
