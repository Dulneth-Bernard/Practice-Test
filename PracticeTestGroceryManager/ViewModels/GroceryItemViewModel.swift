//
//  GroceryItemViewModel.swift
//  PracticeTestGroceryManager
//
//  Created by Jaindu Gajanayake on 2025-10-23.
//

import Foundation

class GroceryItemViewModel: ObservableObject {
    @Published var items: [GroceryItem] = [
        GroceryItem(name: "Broccoli", price: 8.00, imageName: "broccoli", quantity: 0),
        GroceryItem(name: "Banana", price: 12.00, imageName: "banana", quantity: 0),
        GroceryItem(name: "Avocado", price: 15.0, imageName: "avocado", quantity: 0),
        GroceryItem(name: "Chicken", price: 25.0, imageName: "chicken", quantity: 0),
        GroceryItem(name: "Water", price: 5.0, imageName: "water", quantity: 0),
    ]

    func add(item: GroceryItem ) {
        items.append(item)
    }
    
    func remove(atOffsets offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
}
