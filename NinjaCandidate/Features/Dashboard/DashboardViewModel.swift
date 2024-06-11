//
//  DashboardViewModel.swift
//  NinjaCandidate
//

import Foundation
import SwiftUI

class DashboardViewModel: ObservableObject {
    @Published var tasks = [NinjaTask(title: "Errors and Validation"),
                            NinjaTask(title: "Debugging"),
                            NinjaTask(title: "Documentation and Unit Testing"),
                            NinjaTask(title: "Networking"),
                            NinjaTask(title: "Custom Task")]
    
    @ViewBuilder
    func taskView(for task: NinjaTask) -> some View {
        switch task.title {
        case "Errors and Validation":
            ErrorsValidationView()
        case "Debugging":
            DebugView()
        case "Documentation and Unit Testing":
            DocumentationUnitTestingView()
        case "Networking":
            NetworkingTaskView()
        case "Custom Task":
            CustomView()
        default:
            EmptyView()
        }
    }
}

struct NinjaTask: Identifiable, Hashable {
    var id: UUID { UUID() }
    var title: String
}
