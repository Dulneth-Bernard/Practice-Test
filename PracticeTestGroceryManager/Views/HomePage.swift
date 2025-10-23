//
//  HomePage.swift
//  PracticeTestGroceryManager
//
//  Created by Sultan  on 23/10/2025.
//

import SwiftUI

struct HomePage: View {
    @StateObject private var viewModel = GroceryViewModel()
    
    var body: some View {
            NavigationView {
                VStack {
                    Text("Buy Fresh Groceries")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)


                    List(viewModel.groceryItems) { item in
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            
                            VStack(alignment: .leading) {
                                Text(item.name)
                                Text("$\(item.price, specifier: "%.2f")")
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            // Example of an action button that calls a method on the ViewModel.
                            Button(action: {
                                viewModel.addItemToCart(item)
                            }) {
                                Text("+ Add")
                            }
                            .buttonStyle(.bordered)
                        }
                    }
                    .listStyle(.plain)
                    
                }
                .navigationBarHidden(true)
            }
        }
    }


#Preview {
    HomePage()
}
