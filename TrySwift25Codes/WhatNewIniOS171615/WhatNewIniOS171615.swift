//
//  WhatNewIniOS171615.swift
//  TrySwift25Codes
//
//  Created by k_terada on 2025/04/22.
//

import SwiftUI
import Observation

struct WhatNewIniOS171615: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    NavigationLink(destination: iOS17_ContentUnavailableView()) {
                        HStack {
                            Text("[iOS17] ContentUnavailableView")
                                .font(.headline)
                            Image(systemName: "arrow.right.circle")
                        }
                        .padding()
                    }
                }
            }
        }
        .navigationTitle("iOS 17, 16, 15などの新機能")
    }
}
