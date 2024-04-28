import FeatureHome
import UIKit
import FeatureRestaurantDetails

final class HomeFeatureRouter: HomeFeatureRouting {
    var source: UIViewController?
    
    func showRestaurantDetails(for item: HomeItem) {
        let vc = RestaurantDetailsFactory.make()
        source?.present(vc, animated: true)
    }
}
