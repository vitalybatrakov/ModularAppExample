import SwiftUI

struct Restaurant: Identifiable {
    let id: String = UUID().uuidString
}

struct HomeView: View {
    let restaurants = [
        Restaurant(), Restaurant(), Restaurant(),
        Restaurant(), Restaurant(), Restaurant(),
        Restaurant(), Restaurant(), Restaurant(),
        Restaurant(), Restaurant(), Restaurant()
    ]
    
    var body: some View {
        ScrollView {
            LazyVStack(
                alignment: .leading,
                pinnedViews: .sectionHeaders
            ) {
                Section {
                    ForEach(restaurants) { restaurant in
                        HomeItemView()
                            .onTapGesture {
                                // open by restaurant.id
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
    HomeView()
}
