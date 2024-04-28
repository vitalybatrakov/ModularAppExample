import SwiftUI

final class HomeViewModel: ObservableObject {
    
    private let featureRouter: HomeFeatureRouting
    private let homeService: HomeService
    
    @Published var items: [HomeItem] = []
    
    init(
        featureRouter: HomeFeatureRouting,
        homeService: HomeService
    ) {
        self.featureRouter = featureRouter
        self.homeService = homeService
        
        fetchItems()
    }
    
    func fetchItems()  {
        Task {
            do {
                items = try await homeService.getHomeItems()
            } catch {
                print(error)
            }
        }
    }
    
    func showRestaurantDetails(for item: HomeItem) {
        featureRouter.showRestaurantDetails(for: item)
    }
}
