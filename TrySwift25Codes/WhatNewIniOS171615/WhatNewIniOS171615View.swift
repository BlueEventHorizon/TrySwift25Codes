//
//  WhatNewIniOS171615View.swift
//  TrySwift25Codes
//
//  Created by k_terada on 2025/04/22.
//

import SwiftUI
import Observation

struct WhatNewIniOS171615View: View, ListCellPresentable {
    let title = "iOS 17, 16, 15の見過ごされた便利なAPI"
    let description = "見過ごされた便利なAPIを発掘する！"
    let url = "https://www.youtube.com/watch?v=qY09lmDo7GU&list=PLCl5NM4qD3u_Azg7gKw5CK_DqSLeb4QMY"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 8) {
                    let item1 = ExContentUnavailableView()
                    NavigationLink(destination: item1) {
                        ListCell(header: item1)
                    }
                    
                    let item2 = ExSubscriptionStoreView()
                    NavigationLink(destination: item2) {
                        ListCell(header: item2)
                    }
                }
                .padding()
            }
        }
        .navigationTitle("iOS 17, 16, 15などの新機能")
    }
}

