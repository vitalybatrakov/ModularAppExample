import SwiftUI

public enum ProfileFactory {
    public static func make() -> UIViewController {
        UIHostingController(
            rootView: ProfileView(
                user: .init(
                    image: "person.fill",
                    name: "John Smith",
                    bio: "Coffee & Pizza Lover"
                )
            )
        )
    }
}
