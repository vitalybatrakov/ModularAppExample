import FeatureRestaurantDetails

struct RestaurantDetailsAPIService: RestaurantDetailsService {
    
    func getRestaurants() async throws -> [FeatureRestaurantDetails.RestaurantDetails] {
        []
    }
}
