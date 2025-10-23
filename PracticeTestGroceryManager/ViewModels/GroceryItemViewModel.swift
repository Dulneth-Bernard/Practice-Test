//
//  GroceryItemViewModel.swift
//  PracticeTestGroceryManager
//
//  Created by Jaindu Gajanayake on 2025-10-23.
//

import Foundation

class GroceryItemViewModel: ObservableObject {
    @Published var items: [GroceryItem] = []

    func add(item: GroceryItem ) {
        items.append(item)
    }
    
    func remove(atOffsets offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
}
