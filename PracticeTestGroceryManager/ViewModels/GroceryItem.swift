
import Foundation

struct GroceryItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var price: Double
    var quantity: Int
}
