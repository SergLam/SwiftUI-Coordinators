//
//  RecipesApp.swift
//  Shared
//
//  Created by Paul Kraft on 11.12.20.
//

import SwiftUI

@main
struct RecipesApp: App {

    // MARK: Stored Properties
    @StateObject var coordinator = HomeCoordinator(recipeService: RecipeService())

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    // MARK: Scenes
    var body: some Scene {
        WindowGroup {
            HomeCoordinatorView(coordinator: coordinator)
        }
    }

}
