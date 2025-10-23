//
//  HomeView.swift
//  PracticeTestGroceryManager
//
//  Created by Jaindu Gajanayake on 2025-10-23.
//

import SwiftUI
    
    struct HomeView: View {
        @EnvironmentObject var viewModel: GroceryItemViewModel

        var body: some View {
            NavigationView {
                List {
                    Section(header: Text("Select Grocery Items")) {
                        ForEach($viewModel.groceryItems) { $item in
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
                        NavigationLink(destination: CartView().environmentObject(viewModel)) {
                            Text("Checkout")
                                .bold()
                        }
                    }
                }
            }
        }
    }

#Preview{
    HomeView()
        .environmentObject(GroceryItemViewModel())

}
