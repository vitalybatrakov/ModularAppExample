import SwiftUI

struct ProfileView: View {
    
    @State var user: User
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: user.image)
                .resizable()
                .frame(width: 100, height: 100)
            Text(user.name)
                .bold()
            Text(user.bio)
        }
    }
}

#Preview {
    ProfileView(
        user: .init(
            image: "person.fill",
            name: "John Smith",
            bio: "Coffee & Pizza Lover"
        )
    )
}
