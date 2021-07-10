//
//  HomeTab.swift
//  Recipes
//
//  Created by Serhii Liamtsev on 7/10/21.
//  Copyright © 2021 SergLam. All rights reserved.
//

import SwiftUI

enum HomeTab: Int {
    
    case meat = 0
    case veggie = 1
    case settings = 2
    
    var title: String {
        switch self {
        case .meat:
            return "Meat"
        case .veggie:
            return "Veggie"
        case .settings:
            return "Settings"
        }
    }
    
    var systemImage: String {
        switch self {
        case .meat:
            return "hare.fill"
        case .veggie:
            return "leaf.fill"
        case .settings:
            return "gear"
        }
    }
    
}
