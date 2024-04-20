import SwiftUI

struct RestaurantDetailsView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .frame(width: 100, height: 100)
            Text("John Smith")
                .bold()
            Text("iOS Developer")
        }
    }
}

#Preview {
    RestaurantDetailsView()
}
