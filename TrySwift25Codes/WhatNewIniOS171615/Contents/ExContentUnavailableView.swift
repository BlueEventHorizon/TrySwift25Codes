//
//  ExContentUnavailableView.swift
//  TrySwift25Codes
//
//  Created by k_terada on 2025/04/22.
//

import SwiftUI
import Observation

struct ExContentUnavailableView: View, ListCellPresentable {
    let title = "[iOS17] ContentUnavailableView"
    let description = "コンテンツがない場合に表示するView"
    let url = "https://youtu.be/qY09lmDo7GU?list=PLCl5NM4qD3u_Azg7gKw5CK_DqSLeb4QMY&t=616"

    @State private var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.searchResults, id: \.self) { contact in
                    NavigationLink {
                        ContactsView(contact: contact)
                    } label: {
                        Text(contact)
                    }
                }
            }
            .searchable(text: $viewModel.searchText)
            .overlay {
                if viewModel.searchResults.isEmpty {
                    ContentUnavailableView.search
                }
            }
            Spacer()
            Button("サーチ") {
                viewModel.search()
            }
        }
        .navigationTitle("サーチボタンでランダムに結果を返します")
    }
}

@Observable
private class ViewModel {
    var searchResults: [String] = []
    var searchText: String = ""
    
    func search() {
        if Bool.random() {
            searchResults = ["Alice", "Bob", "Charlie"]
        } else {
            searchResults = []
        }
    }
}

private struct ContactsView: View {
    let contact: String
    var body: some View {
        Text(contact)
    }
}
