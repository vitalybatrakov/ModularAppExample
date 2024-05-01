import FeatureRestaurantDetails
import SwiftUI
import YourNetwork

enum RestaurantDetailsCompositionFactory {
    static func make(restaurantId: String) -> UIViewController {
        RestaurantDetailsFeatureFactory.make(
            restaurantId: restaurantId,
            restaurantDetailsService: RestaurantDetailsServiceFactory.make()
        )
    }
}
