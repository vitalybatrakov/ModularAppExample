import FeatureRestaurantDetails

enum RestaurantDetailsServiceFactory {
    static func make() -> RestaurantDetailsService {
        // TODO: Use real api service
        //        RestaurantDetailsAPIService(
        //            requester: YourNetworkRequester()
        //        )
        return RestaurantDetailsServiceStub()
    }
}
