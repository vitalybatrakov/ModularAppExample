import SwiftUI

public enum HomeFeatureFactory {
    public static func make(
        featureRouter: HomeFeatureRouting,
        homeService: HomeService
    ) -> UIViewController {
        UIHostingController(
            rootView: HomeView(
                vm: HomeViewModel(
                    featureRouter: featureRouter, 
                    homeService: homeService
                )
            )
        )
    }
}
