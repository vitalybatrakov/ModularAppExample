import SwiftUI

public enum ProfileFactory {
    public static func make() -> UIViewController {
        UIHostingController(
            rootView: ProfileView(
                profile: .init(
                    image: "person.fill",
                    name: "John Smith",
                    bio: "Coffee & Pizza Lover"
                )
            )
        )
    }
}
