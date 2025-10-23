//
//  GroceryItemViewModel.swift
//  PracticeTestGroceryManager
//
//  Created by Jaindu Gajanayake on 2025-10-23.
//


import Foundation

class GroceryItemViewModel: ObservableObject {
    @Published var groceryItems: [GroceryItem] = [
        GroceryItem(name: "Broccoli", price: 8.00, imageName: "broccoli", quantity: 0),
        GroceryItem(name: "Banana", price: 10.00, imageName: "banana", quantity: 0),
        GroceryItem(name: "Avocado", price: 7.00, imageName: "avocado", quantity: 0),
        GroceryItem(name: "Chicken", price: 20.00, imageName: "chicken", quantity: 0),
        GroceryItem(name: "Water", price: 5.00, imageName: "water", quantity: 0)
    ]

    @Published var cartItems: [GroceryItem] = []
    @Published var previousTotalBill: Double = 0.0
    
    var netAmount: Double {
        cartItems.reduce(0.0) { (result: Double, item: GroceryItem) -> Double in
            result + item.totalValue
        }
    }
    
    func addToCart(_ item: GroceryItem) {
        if let index = cartItems.firstIndex(where: { $0.id == item.id }) {
            cartItems[index].quantity += 1
        } else {
            var newItem = item
            newItem.quantity = 1
            cartItems.append(newItem)
        }
    }
    
    func removeFromCart(_ item: GroceryItem) {
        if let index = cartItems.firstIndex(where: { $0.id == item.id }) {
            cartItems.remove(at: index)
        }
    }
    
    func updatePreviousBill() {
        previousTotalBill = netAmount
    }
    
    func clearCart() {
        cartItems.removeAll()
    }
}
