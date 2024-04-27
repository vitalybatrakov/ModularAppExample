import SwiftUI

struct ProfileView: View {
    
    @State var profile: Profile
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: profile.image)
                .resizable()
                .frame(width: 100, height: 100)
            Text(profile.name)
                .bold()
            Text(profile.bio)
        }
    }
}

#Preview {
    ProfileView(
        profile: .init(
            image: "person.fill",
            name: "John Smith",
            bio: "Coffee & Pizza Lover"
        )
    )
}
