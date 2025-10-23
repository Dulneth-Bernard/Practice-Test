//
//  HomeView.swift
//  PracticeTestGroceryManager
//
//  Created by Jaindu Gajanayake on 2025-10-23.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var groceryItemViewModel = GroceryItemViewModel()
    
    @State private var showCart = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Select Grocery Items")) {
                        ForEach(groceryItemViewModel.items ) { item in
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
                                
                                Stepper(value: Binding(
                                    get: { item.quantity },
                                    set: { newValue in
                                        groceryItemViewModel.updateQuantity(for: item, quantity: newValue)
                                    }
                                ), in: 0...10) {
                                    Text("\(item.quantity)")
                                }
                                .frame(width: 120)
                            }
                            .padding(.vertical, 5)
                        }
                    }
                }
                .listStyle(.insetGrouped)
                
            
                NavigationLink(destination: CartView(), isActive: $showCart) {
                    EmptyView()
                }
                .hidden()
                
                Button(action: {
                    showCart = true
                }) {
                    Text("Checkout")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(12)
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                }
            }
            .navigationTitle("Buy Fresh Groceries")
        }
    }
}

#Preview {
    HomeView()
}
