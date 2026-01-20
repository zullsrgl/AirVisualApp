//
//  NavigationViewModel.swift
//  AirVisualAppDemo
//
//  Created by Zülal Sarıoğlu on 16.01.2026.
//

import Combine
import Foundation
import SwiftUI

final class NavigationRouthViewModel: ObservableObject {
    @Published var navigationPath = NavigationPath()
    
    func push(routh: Routhe){
        navigationPath.append(routh)
    }
    
    func pop() {
        guard !navigationPath.isEmpty else { return }
        navigationPath.removeLast()
    }
    
}
