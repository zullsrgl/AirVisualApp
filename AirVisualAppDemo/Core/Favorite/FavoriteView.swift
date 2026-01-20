//
//  FavoriteView.swift
//  AirVisualAppDemo
//
//  Created by Zülal Sarıoğlu on 16.01.2026.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        ScrollView {  
            VStack {
                FavoriteCardView()
                    .padding(.horizontal)
                FavoriteCardView()
                    .padding(.horizontal)
                FavoriteCardView()
                    .padding(.horizontal)
                FavoriteCardView()
                    .padding(.horizontal)
                FavoriteCardView()
                    .padding(.horizontal)
                FavoriteCardView()
                    .padding(.horizontal)
                FavoriteCardView()
                    .padding(.horizontal)
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
        }
    }
}

#Preview {
    FavoriteView()
}
