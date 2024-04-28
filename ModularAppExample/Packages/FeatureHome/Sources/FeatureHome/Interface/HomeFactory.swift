import SwiftUI

public enum HomeFactory {
    public static func make(
        featureRouter: HomeFeatureRouting,
        homeService: HomeService
    ) -> UIViewController {
        let vc = UIHostingController(
            rootView: HomeView(
                vm: HomeViewModel(
                    featureRouter: featureRouter, 
                    homeService: homeService
                )
            )
        )
        featureRouter.source = vc
        return vc
    }
}
