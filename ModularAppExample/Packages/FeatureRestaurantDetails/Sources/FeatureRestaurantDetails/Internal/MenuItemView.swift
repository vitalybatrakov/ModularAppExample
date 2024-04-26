import SwiftUI

struct MenuItemView: View {
    @State var menuItem: MenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(menuItem.title)
                .bold()
            Text(menuItem.description)
        }
    }
}

#Preview {
    MenuItemView(
        menuItem: .init(
            title: "Title",
            description: "Description"
        )
    )
}
