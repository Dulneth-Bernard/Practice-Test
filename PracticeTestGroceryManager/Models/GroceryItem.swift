import Foundation

struct GroceryItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var price: Double
    let imageName: String
    var quantity: Int
    var totalValue: Double {
            Double(quantity) * price
        }
}
