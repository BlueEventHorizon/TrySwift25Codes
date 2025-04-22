//
//  iOS17_ContentUnavailableView.swift
//  TrySwift25Codes
//
//  Created by k_terada on 2025/04/22.
//

import SwiftUI
import Observation

// https://youtu.be/qY09lmDo7GU?list=PLCl5NM4qD3u_Azg7gKw5CK_DqSLeb4QMY&t=616

struct iOS17_ContentUnavailableView: View {
    @State private var viewModel = ContactsViewModel()

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
            .navigationTitle("サーチボタンでランダムに結果を返します")
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
    }
}

@Observable
class ContactsViewModel {
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

struct ContactsView: View {
    let contact: String
    var body: some View {
        Text(contact)
    }
}
