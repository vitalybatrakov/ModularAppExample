import Foundation

final class RestaurantDetailsViewModel: ObservableObject {
    
    private let restaurantId: String
    private let restaurantDetailsService: RestaurantDetailsService
    
    @Published var details: RestaurantDetails?
    
    init(
        restaurantId: String,
        restaurantDetailsService: RestaurantDetailsService
    ) {
        self.restaurantId = restaurantId
        self.restaurantDetailsService = restaurantDetailsService
        
        fetchRestaurantDetails()
    }
    
    func fetchRestaurantDetails()  {
        Task {
            do {
                details = try await restaurantDetailsService.getRestaurantDetails(
                    id: restaurantId
                )
            } catch {
                print(error)
            }
        }
    }
}
