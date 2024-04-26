import SwiftUI

struct RestaurantDetailsView: View {
    @State var details: RestaurantDetails
    
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
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    RestaurantDetailsView(
        details: .init(
            image: "cup.and.saucer",
            title: "Struducks",
            description: "Best of the best of the best of the best of the best of the best of the best of the best of the best of the best of the best",
            items: [
                MenuItem(title: "Large item", description: "Very large"),
                MenuItem(title: "Medium item", description: "Very medium"),
                MenuItem(title: "Small item", description: "Very small")
            ]
        )
    )
}
