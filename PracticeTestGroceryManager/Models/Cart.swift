//
//  Cart.swift
//  PracticeTestGroceryManager
//
//  Created by Sultan  on 23/10/2025.
//

import Foundation

struct CartItem: Identifiable {
    let id = UUID()
    let groceryItem: GroceryItem
    var quantity: Int
}


struct Cart {
    var items: [CartItem] = []

    
    var totalBill: Double {
        items.reduce(0) { sum, cartItem in
            sum + (cartItem.groceryItem.price * Double(cartItem.quantity))
        }
    }
}
