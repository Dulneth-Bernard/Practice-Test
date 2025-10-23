//
//  GroceryItem.swift
//  PracticeTestGroceryManager
//
//  Created by Sultan  on 23/10/2025.
//

import Foundation
struct GroceryItem: Identifiable {
    let id = UUID() // Provides a unique ID for each book instance.
    var name: String
    var price: Double
    var imageName: String
}
