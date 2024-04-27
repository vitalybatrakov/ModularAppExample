import FeatureHome
import FeatureRestaurantDetails

struct HomeFeatureRouter: HomeFeatureRouting {
    
    func showRestaurantDetails(for item: HomeItem) {
        let vc = RestaurantDetailsFactory.make()
        // show vc
        // get nc
    }
}
