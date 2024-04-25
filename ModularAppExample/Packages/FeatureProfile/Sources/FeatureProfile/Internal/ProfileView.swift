import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            Text("John Smith")
                .bold()
            Text("iOS Developer")
        }
    }
}

#Preview {
    ProfileView()
}
