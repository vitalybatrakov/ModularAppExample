import SwiftUI

public enum HomeFactory {
    public static func make(
        featureRouter: HomeFeatureRouting
    ) -> UIViewController {
        UIHostingController(
            rootView: HomeView(
                vm: HomeViewModel(featureRouter: featureRouter)
            )
        )
    }
}
