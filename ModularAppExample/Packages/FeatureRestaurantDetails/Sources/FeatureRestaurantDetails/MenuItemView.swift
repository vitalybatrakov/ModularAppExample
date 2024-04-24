import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Menu Item")
                .bold()
            Text("Menu item description")
        }
    }
}

#Preview {
    MenuItemView()
}
