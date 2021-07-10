//
//  HomeCoordinator.swift
//  Recipes
//
//  Created by Paul Kraft on 11.12.20.
//

import SwiftUI

struct HomeCoordinatorView: View {

    // MARK: Stored Properties

    @ObservedObject var coordinator: HomeCoordinator

    // MARK: Views

    var body: some View {
        TabView(selection: $coordinator.tab) {

            RecipeListCoordinatorView(coordinator: coordinator.meatCoordinator)
                .tabItem {
                    Label(HomeTab.meat.title,
                          systemImage: HomeTab.meat.systemImage)
                }.tag(HomeTab.meat)

            RecipeListCoordinatorView(coordinator: coordinator.veggieCoordinator)
                .tabItem {
                    Label(HomeTab.veggie.title,
                          systemImage: HomeTab.veggie.systemImage)
                }.tag(HomeTab.veggie)

            NavigationView {
                SettingsView(coordinator: coordinator)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Label(HomeTab.settings.title,
                      systemImage: HomeTab.settings.systemImage)
            }.tag(HomeTab.settings)
        }
        .onChange(of: coordinator.tab, perform: { tab in
            print(tab.rawValue)
        })
        .sheet(item: $coordinator.openedURL) {
            SafariView(url: $0)
                .edgesIgnoringSafeArea(.all)
        }
    }

}
