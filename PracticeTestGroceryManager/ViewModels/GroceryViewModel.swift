//
//  GroceryViewModel.swift
//  PracticeTestGroceryManager
//
//  Created by Sultan  on 23/10/2025.
//

import Foundation
import Combine


class GroceryViewModel: ObservableObject {
    

    @Published var groceryItems: [GroceryItem] = []
    

    @Published var cart = Cart()
    
    init() {
        loadGroceries()
    }
    

    func addItemToCart(_ item: GroceryItem) {
//        cart.items.append(item)
    }
    

    private func loadGroceries() {
        groceryItems = [
            GroceryItem(name: "Broccoli", price: 10.0, imageName: "broccoli"),
            GroceryItem(name: "Banana", price: 10.0, imageName: "banana"),
            GroceryItem(name: "Avocado", price: 10.0, imageName: "avocado"),
            GroceryItem(name: "Chicken", price: 10.0, imageName: "chicken"),
            GroceryItem(name: "Water", price: 10.0, imageName: "water")
        ]
    }
}
