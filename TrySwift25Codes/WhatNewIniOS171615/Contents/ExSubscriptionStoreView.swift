//
//  ExSubscriptionStoreView.swift
//  TrySwift25Codes
//
//  Created by k_terada on 2025/04/27.
//


import SwiftUI
import Observation
import StoreKit

struct ExSubscriptionStoreView: View, ListCellPresentable {
    let title = "[iOS17] SubscriptionStoreView"
    let description = "Storeの購読"
    let url = "https://youtu.be/qY09lmDo7GU?list=PLCl5NM4qD3u_Azg7gKw5CK_DqSLeb4QMY&t=733"
    
    @State private var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            PaywallView()
        }
        .navigationTitle("⚠️")
    }
}

@Observable
private class ViewModel {

}

let productIDs: Set<String> = {
    ["com.my.app.pro.monthly", "com.my.app.pro.yearly"]
}()

struct PaywallView: View {
    var body: some View {
        SubscriptionStoreView(productIDs: productIDs) {
            VStack(spacing: 16) {
                Image(systemName: "dollarsign.square.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.green)
                    .frame(height: 80)

                Text("Subscribe to Pro!")
                    .font(.title)
                    .bold()
            }
        }
    }
}
