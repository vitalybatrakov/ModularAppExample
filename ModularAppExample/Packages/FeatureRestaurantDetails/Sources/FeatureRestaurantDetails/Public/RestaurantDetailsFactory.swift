import SwiftUI

public enum RestaurantDetailsFactory {
    public static func make() -> UIViewController {
        UIHostingController(
            rootView: RestaurantDetailsView(
                details: RestaurantDetails(
                    image: "cup.and.saucer",
                    title: "Struducks",
                    description: "Best of the best",
                    items: []
                )
            )
        )
    }
}
