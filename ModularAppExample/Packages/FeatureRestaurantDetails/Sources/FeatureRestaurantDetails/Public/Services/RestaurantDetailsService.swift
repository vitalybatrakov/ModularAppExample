import Foundation

public protocol RestaurantDetailsService {
    func getRestaurantDetails(id: String) async throws -> RestaurantDetails
}
