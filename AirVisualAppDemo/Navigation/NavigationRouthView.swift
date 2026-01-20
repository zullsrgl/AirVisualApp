//
//  NavigationRouthView.swift
//  AirVisualAppDemo
//
//  Created by Zülal Sarıoğlu 16.01.2026.
//

import SwiftUI

enum Routhe: Hashable {
    case home
    case favorite
    case settings
}

struct NavigationRouthView: View {
    @StateObject private var viewModel = NavigationRouthViewModel()
    
    var body: some View {
        TabView {
            NavigationStack {
                MapView()
            }.tabItem {
                Label("Home", systemImage: "map")
                 
            }
            NavigationStack {
                FavoriteView()
            }.tabItem {
                Label("Favorite", systemImage: "heart")
                 
            }
            NavigationStack {
                SettingsView()
            }.tabItem {
                Label("Settings", systemImage: "person")
                 
            } 
        }
        
    }
}

#Preview {
    NavigationRouthView()
}
