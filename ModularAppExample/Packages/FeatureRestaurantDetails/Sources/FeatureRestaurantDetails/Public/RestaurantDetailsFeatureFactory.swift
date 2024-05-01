import SwiftUI

public enum RestaurantDetailsFeatureFactory {
    public static func make(
        restaurantId: String,
        restaurantDetailsService: RestaurantDetailsService
    ) -> UIViewController {
        UIHostingController(
            rootView: RestaurantDetailsContainerView(
                vm: RestaurantDetailsViewModel(
                    restaurantId: restaurantId,
                    restaurantDetailsService: restaurantDetailsService
                )
            )
        )
    }
}
