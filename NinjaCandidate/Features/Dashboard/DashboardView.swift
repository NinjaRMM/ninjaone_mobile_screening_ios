//
//  DashboardView.swift
//  NinjaCandidate
//

import Foundation
import SwiftUI

struct DashboardView: View {
    @StateObject var viewModel = DashboardViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            NavigationStack {
                List {
                    ForEach($viewModel.tasks, id: \.self) { task in
                        NavigationLink(task.title.wrappedValue) {
                            viewModel.taskView(for: task.wrappedValue)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    DashboardView()
}
