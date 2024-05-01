import FeatureRestaurantDetails
import YourNetwork

struct RestaurantDetailsAPIService: RestaurantDetailsService {
    private let requester: Requester
    
    init(requester: Requester) {
        self.requester = requester
    }
    
    func getRestaurantDetails(id: String) async throws -> RestaurantDetails {
        try await requester.sendRequest(endPoint: RestaurantDetailsEndPoint())
    }
}

struct RestaurantDetailsServiceStub: RestaurantDetailsService {
    
    func getRestaurantDetails(id: String) async throws -> RestaurantDetails {
        RestaurantDetails(
            image: "cup.and.saucer",
            title: "Struducks",
            description: "Best of the best",
            items: [
                MenuItem(title: "Large item", description: "Very large"),
                MenuItem(title: "Medium item", description: "Very medium"),
                MenuItem(title: "Small item", description: "Very small")
            ]
        )
    }
}
