import SwiftUI
import YourUI

struct HomeView: View {
    @ObservedObject var vm: HomeViewModel
    
    var body: some View {
        HomeViewList(
            items: vm.items,
            showRestaurantDetails: vm.showRestaurantDetails(for:)
        )
    }
}

struct HomeViewList: View {
    let items: [HomeItem]
    let showRestaurantDetails: ((HomeItem) -> Void)?
    
    var body: some View {
        ScrollView {
            LazyVStack(
                alignment: .leading,
                pinnedViews: .sectionHeaders
            ) {
                Section {
                    ForEach(items) { item in
                        HomeItemView(item: item)
                            .onTapGesture {
                                showRestaurantDetails?(item)
                            }
                    }
                } header: {
                    HStack {
                        Text("Restaurants")
                            .padding()
                        
                        Spacer()
                        
                        Button {
                            // TODO
                        } label: {
                            Text("Add new")
                        }
                        .buttonStyle(.pink)
                    }
                    .padding()
                    .background(Color(.systemBackground))
                }
            }
        }
        .clipped()
    }
}

#Preview {
    HomeViewList(
        items: [
            .init(
                image: "cup.and.saucer",
                title: "Sizzle & Spice",
                description: "Bold Flavors, Eclectic Dishes"
            ),
            .init(
                image: "mug",
                title: "Zenith Bites",
                description: "Culinary Heights, Global Fusion"
            ),
            .init(
                image: "takeoutbag.and.cup.and.straw",
                title: "Blue Harbor",
                description: "Fresh Seafood, Coastal Elegance"
            ),
        ],
        showRestaurantDetails: { item in
            print("Item \(item.title) tapped")
        }
    )
}
