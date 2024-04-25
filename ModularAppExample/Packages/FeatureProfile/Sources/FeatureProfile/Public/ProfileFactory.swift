import SwiftUI

public enum ProfileFactory {
    public static func make() -> UIViewController {
        UIHostingController(rootView: ProfileView())
    }
}
