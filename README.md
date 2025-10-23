🛒 Grocery Manager

Grocery Manager is a simple iOS app built with SwiftUI following the MVVM architecture. It allows users to browse grocery items, add quantities to a cart, and view the total price before checkout. All data is stored locally on the client side.

📱 Features

Browse a list of grocery items with images, names, and prices.

Increment or decrement item quantities using a Stepper.

Dynamic CartView showing only items with quantity > 0.

Real-time calculation of the total price.

Navigation between Home and Cart screens.

Fully client-side; no backend required.

🏗 Architecture

Models: Define the data structure (GroceryItem).

ViewModels: Manage business logic and state (GroceryItemViewModel).

Views: Build the user interface (HomeView, CartView).

Uses @StateObject and @Published for reactive updates.

💻 Installation

Clone the repository:

git clone https://github.com/yourusername/GroceryManager.git


Open the project in Xcode (version 15+ recommended).

Build and run on a simulator or a physical device.

🧩 Usage

Open the app to see the list of grocery items.

Use the Stepper to select the desired quantity for each item.

Tap Checkout to navigate to the Cart page.

View all items added to the cart and the total price.

Remove items from the cart if needed.

