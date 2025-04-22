//
//  ContentView.swift
//  TrySwift25Codes
//
//  Created by k_terada on 2025/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    NavigationLink(destination: WhatNewIniOS171615()) {
                        HStack {
                            Text("iOS 17, 16, 15などの新機能")
                                .font(.headline)
                            Image(systemName: "arrow.right.circle")
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
