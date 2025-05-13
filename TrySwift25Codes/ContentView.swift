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
                VStack(spacing: 8) {
                    let presentation1 = WhatNewIniOS171615View()
                    NavigationLink(destination: presentation1) {
                        ListCell(header: presentation1)
                    }
                }
                .padding(20)
            }
            .navigationTitle("Try! Swift 2025 サンプルソースコード")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
