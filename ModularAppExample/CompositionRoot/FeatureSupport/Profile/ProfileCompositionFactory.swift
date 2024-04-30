import FeatureProfile
import SwiftUI
import YourNetwork

enum ProfileCompositionFactory {
    static func make() -> UIViewController {
        ProfileFeatureFactory.make(
            profileService: ProfileServiceFactory.make()
        )
    }
}
