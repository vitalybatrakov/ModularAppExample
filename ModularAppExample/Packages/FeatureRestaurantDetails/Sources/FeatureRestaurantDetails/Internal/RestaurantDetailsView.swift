import SwiftUI
import YourUI

struct RestaurantDetailsContainerView: View {
    @ObservedObject var vm: RestaurantDetailsViewModel
    
    var body: some View {
        if let details = vm.details {
            RestaurantDetailsView(details: details)
        } else {
            ProgressView()
        }
    }
}

struct RestaurantDetailsView: View {
    var details: RestaurantDetails
    
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                Image(systemName: details.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                Text(details.title)
                    .bold()
                Text(details.description)
                
                ForEach(details.items) { item in
                    MenuItemView(menuItem: item)
                }
                .padding(.vertical, 8)
                
                Button {
                    // TODO:
                } label: {
                    Text("Order here")
                        .frame(width: 100)
                }
                .buttonStyle(.pink)
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .offset(y: 50)
        .padding()
    }
}

#Preview {
    RestaurantDetailsView(
        details: RestaurantDetails(
            image: "cup.and.saucer",
            title: "Struducks",
            description: "Best of the best",
            items: [
                MenuItem(title: "Large item", description: "Very large"),
                MenuItem(title: "Medium item", description: "Very medium"),
                MenuItem(title: "Small item", description: "Very small")
            ]
        )
    )
}
