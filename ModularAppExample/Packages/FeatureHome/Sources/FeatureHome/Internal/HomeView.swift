import SwiftUI

struct HomeView: View {
    @StateObject var vm: HomeViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack(
                alignment: .leading,
                pinnedViews: .sectionHeaders
            ) {
                Section {
                    ForEach(vm.items) { item in
                        HomeItemView(item: item)
                            .onTapGesture {
                                vm.showRestaurantDetails(for: item)
                            }
                    }
                } header: {
                    Text("Restaurants")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(.white))
                }
            }
        }
        .clipped()
    }
}

#Preview {
    HomeView(
        vm: HomeViewModel(
            featureRouter: HomeFeatureRoutingDummy(), 
            homeService: HomeServiceDummy()
        )
    )
}

fileprivate class HomeFeatureRoutingDummy: HomeFeatureRouting {
    var source: UIViewController?
    
    func showRestaurantDetails(for item: HomeItem) {}
}

fileprivate struct HomeServiceDummy: HomeService {
    func getHomeItems() async throws -> [HomeItem] { [] }
}
