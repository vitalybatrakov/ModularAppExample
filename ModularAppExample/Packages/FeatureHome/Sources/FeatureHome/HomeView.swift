import SwiftUI

struct Restaurant: Identifiable {
    let id: String = UUID().uuidString
}

struct HomeView: View {
    let restaurants = [
        Restaurant(), Restaurant(), Restaurant()
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Restaurants")
                .padding()
            
            ForEach(restaurants) { restaurant in
                RestaurantView()
                    .onTapGesture {
                        // open by restaurant.id
                    }
            }
        }
    }
}

#Preview {
    HomeView()
}
