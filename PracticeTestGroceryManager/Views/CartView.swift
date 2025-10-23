//
//  CartView.swift
//  PracticeTestGroceryManager
//
//  Created by Jaindu Gajanayake on 2025-10-23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var manager: GroceryItemViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        List {
            Section {
            
                Text(String(format: "Your previous deal with us was $%.2f", manager.previousTotalBill))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.green.opacity(0.15))
                    .foregroundColor(Color(UIColor.systemGreen))
                    .cornerRadius(8)
            } header: {
                Text("Previous Purchase")
            }
            
            if manager.cartItems.isEmpty {
                Section {
                    Text("Your Cart is Empty")
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                } header: {
                    Text("Current Order (New Bill)")
                }
            } else {
                Section {
                    ForEach(manager.cartItems) { item in
                        HStack {
                            Text("\(item.name) x \(item.quantity)")
                            Spacer()
                            Text(String(format: "$%.2f", item.totalValue))
                                .fontWeight(.medium)
                        }
                    }
                    
                    HStack {
                        Text("Net Amount")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Text(String(format: "$%.2f", manager.netAmount))
                            .font(.title3)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                } header: {
                    Text("Current Order (New Bill)")
                }
                
                Button("Generate New Bill") {
                    manager.updatePreviousBill()
                    manager.clearCart()
                    dismiss()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .listRowBackground(Color.clear)
            }
        }
        .navigationTitle("Cart Page")
    }
}

#Preview {
    NavigationView {
        CartView()
    }
    .environmentObject(GroceryItemViewModel())
}
