import Foundation

public protocol RestaurantDetailsService {
    func getRestaurants() async throws -> [RestaurantDetails]
}
