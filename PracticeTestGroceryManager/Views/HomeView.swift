//
//  HomeView.swift
//  PracticeTestGroceryManager
//
//  Created by Jaindu Gajanayake on 2025-10-23.
//

import SwiftUI

struct HomeView: View {
    @State private var groceryItems: [GroceryItem] = [
        GroceryItem(name: "Broccoli", price: 8.00, imageName: "broccoli", quantity: 0),
        GroceryItem(name: "Banana", price: 10.00, imageName: "banana", quantity: 0),
        GroceryItem(name: "Avocado", price: 7.00, imageName: "avocado", quantity: 0),
        GroceryItem(name: "Chicken", price: 20.00, imageName: "chicken", quantity: 0),
        GroceryItem(name: "Water", price: 5.00, imageName: "water", quantity: 0)
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Select Grocery Items")) {
                    ForEach($groceryItems) { $item in
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(String(format: "$%.2f per item", item.price))
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
            
                            Stepper(value: $item.quantity, in: 0...10) {
                                Text("\(item.quantity)")
                            }
                            .frame(width: 120)
                        }
                        .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Buy Fresh Groceries")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: CartView()) {
                        Text("Checkout")
                            .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
