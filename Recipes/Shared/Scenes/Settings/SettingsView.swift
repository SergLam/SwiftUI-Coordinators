//
//  SettingsView.swift
//  Recipes
//
//  Created by Paul Kraft on 01.01.21.
//

import SwiftUI

struct SettingsView: View {

    // MARK: Stored Properties

    @ObservedObject var coordinator: HomeCoordinator

    // MARK: Views

    var body: some View {
        VStack(spacing: 8) {
            Text("Serg Lam").bold()
            Text("Freedom Square, 9")
            Text("61000 Kharkiv")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .contentShape(Rectangle())
        .onTapGesture(perform: openWebsite)
        .navigationTitle("Settings")
    }

    // MARK: Methods

    private func openWebsite() {
        guard let url = URL(string: "https://serglam.github.io/") else {
            return assertionFailure()
        }
        self.coordinator.open(url)
    }

}
