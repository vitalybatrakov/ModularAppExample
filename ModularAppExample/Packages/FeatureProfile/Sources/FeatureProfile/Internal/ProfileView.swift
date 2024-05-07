import SwiftUI
import YourUI

struct ProfileContainerView: View {
    @ObservedObject var vm: ProfileViewModel
    
    var body: some View {
        if let profile = vm.profile {
            ProfileView(profile: profile)
        } else {
            ProgressView()
        }
    }
}

struct ProfileView: View {
    var profile: Profile
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: profile.image)
                .resizable()
                .frame(width: 100, height: 100)
            Text(profile.name)
                .bold()
            Text(profile.bio)
            
            Button {
                // TODO
            } label: {
                Text("Edit")
                    .frame(width: 100)
            }
            .buttonStyle(.pink)
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
