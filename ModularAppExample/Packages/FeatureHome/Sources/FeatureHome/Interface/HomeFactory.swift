import SwiftUI

public enum HomeFactory {
    public static func make() -> UIViewController {
        UIHostingController(rootView: HomeView())
    }
}
