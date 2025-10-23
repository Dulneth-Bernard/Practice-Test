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
        GroceryItem(name: "Banana", price: 10.00, imageName: "banana", quantity: 0),
        GroceryItem(name: "Avocado", price: 7.00, imageName: "avocado", quantity: 0),
        GroceryItem(name: "Chicken", price: 20.00, imageName: "chicken", quantity: 0),
        GroceryItem(name: "Water", price: 5.00, imageName: "water", quantity: 0)
    ]


    func add(item: GroceryItem ) {
        items.append(item)
    }
    
    func remove(atOffsets offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    func updateQuantity(for item: GroceryItem, quantity: Int) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].quantity = quantity
        }
    }
}
