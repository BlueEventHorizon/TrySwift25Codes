//
//  ListCell.swift
//  TrySwift25Codes
//
//  Created by k_terada on 2025/04/27.
//

import SwiftUI

struct ListCell: View {
    let header: ListCellPresentable

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text(header.title)
                        .font(.headline)
                        .tint(.black)
                    
                    Text(header.description)
                        .font(.footnote)
                        .tint(.gray)
                }
                
                Spacer()
                
                Image(systemName: "arrow.right.circle.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

protocol ListCellPresentable {
    var title: String { get }
    var description: String { get }
    var url: String { get }
}
