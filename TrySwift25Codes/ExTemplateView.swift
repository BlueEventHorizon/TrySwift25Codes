//
//  ExampleTemplateView.swift
//  TrySwift25Codes
//
//  Created by k_terada on 2025/04/27.
//

import SwiftUI
import Observation

struct ExampleTemplateView: View, ListCellPresentable {
    let title = ""
    let description = ""
    let url = ""
    
    @State private var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                
            }
        }
        .navigationTitle("⚠️")
    }
}

@Observable
private class ViewModel {

}

