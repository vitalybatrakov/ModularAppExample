import SwiftUI

struct RestaurantDetailsView: View {
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                Image(systemName: "cup.and.saucer")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                Text("Startducks")
                    .bold()
                Text("Best coffee you can imagine")
                
                ForEach(0..<10) { _ in
                    MenuItemView()
                        .padding(.vertical)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    RestaurantDetailsView()
}
