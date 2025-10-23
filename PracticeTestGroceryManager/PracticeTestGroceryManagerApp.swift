//
//  PracticeTestGroceryManagerApp.swift
//  PracticeTestGroceryManager
//
//  Created by Dulneth Bernard on 23/10/2025.
//

import SwiftUI

@main
struct PracticeTestGroceryManagerApp: App {
    @StateObject var viewModel = GroceryItemViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(viewModel)
        }
    }
}
