//
//  DebugTaskViewModel.swift
//  NinjaCandidate
//
//

import Foundation
import SwiftUI

class DebugViewModel: ObservableObject {
    
    let numbers = [1, 2, 3, 4, 5]
    
    // TODO:
    //  - Find and fix the bug. Display the result of the average on the view.
    func calculateAverage(numbers: [Int]) -> Double {
        var sum = 0
        for num in numbers {
            sum += num
        }
        let average = Double(sum) / Double(numbers.count)
        return average
    }
    
    // TODO:
    //  - Find and fix the bug. Display the output on the view.
    func findLargestNumber(in numbers: [Int]) -> Int {
        guard var largest = numbers.first else {
            return 0
        }
        
        for number in numbers {
            if number > largest {
                largest = number
            }
        }
        
        return largest
    }
    
    // TODO:
    //  - Find and fix the bug. Display the output on the view.
    func removeDuplicates(from numbers: [Int]) -> [Int] {
        var result = [Int]()
        
        for element in numbers {
            if !result.contains(element) {
                result.append(element)
            }
        }
        
        return result
    }
    
    // TODO:
    //  - Find and fix the bug. Display the output on the view.
    func sumOfNumbers() {
        let number1 = 10
        let number2 = 5
        
        let result = addNumbers(number1, number2)
    }
    
    // Utility function
    private func addNumbers(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}
