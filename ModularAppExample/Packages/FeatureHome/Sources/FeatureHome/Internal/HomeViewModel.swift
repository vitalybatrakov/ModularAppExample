import SwiftUI

extension HomeView {
    
    final class HomeViewModel: ObservableObject {
        
        @Published var items: [HomeItem] = [
            .init(
                image: "cup.and.saucer",
                title: "Sizzle & Spice",
                description: "Bold Flavors, Eclectic Dishes"
            ),
            .init(
                image: "mug",
                title: "Zenith Bites",
                description: "Culinary Heights, Global Fusion"
            ),
            .init(
                image: "takeoutbag.and.cup.and.straw",
                title: "Blue Harbor",
                description: "Fresh Seafood, Coastal Elegance"
            ),
            .init(
                image: "wineglass",
                title: "Fusion Fiesta",
                description: "International Flavors, Vibrant Atmosphere"
            ),
            .init(
                image: "waterbottle",
                title: "Mint & Ember",
                description: "Fresh Fare, Warm Ambiance"
            ),
            .init(
                image: "birthday.cake",
                title: "Urban Vineyard",
                description: "Rustic Charm, Modern Cuisine"
            ),
            .init(
                image: "carrot",
                title: "Golden Crust",
                description: "Crispy Pies, Comfort Classics"
            ),
            .init(
                image: "fork.knife",
                title: "Flame & Fork",
                description: "Grilled Delights, Savory Selections"
            ),
            .init(
                image: "cup.and.saucer.fill",
                title: "Taste Odyssey",
                description: "Culinary Adventures, Global Palette"
            ),
            .init(
                image: "fork.knife.circle",
                title: "Saffron Sizzle",
                description: "Exotic Spices, Aromatic Delights"
            )
        ]
        
    }
}
