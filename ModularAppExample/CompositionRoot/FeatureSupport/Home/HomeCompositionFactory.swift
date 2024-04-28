import FeatureHome
import SwiftUI
import YourNetwork

enum HomeCompositionFactory {
    static func make() -> UIViewController {
        let featureRouter = HomeFeatureRouter()
        let homeService = HomeServiceFactory.make()
        let vc = HomeFeatureFactory.make(
            featureRouter: featureRouter,
            homeService: homeService
        )
        featureRouter.source = vc
        return vc
    }
}
