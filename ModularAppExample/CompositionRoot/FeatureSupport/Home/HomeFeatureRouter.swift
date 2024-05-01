import FeatureHome
import UIKit
import FeatureRestaurantDetails

final class HomeFeatureRouter: HomeFeatureRouting {
    var source: UIViewController?
    
    func showRestaurantDetails(for item: HomeItem) {
        let vc = RestaurantDetailsCompositionFactory.make(
            restaurantId: item.id
        )
        source?.present(vc, animated: true)
    }
}
