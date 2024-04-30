import SwiftUI

public enum ProfileFeatureFactory {
    public static func make(profileService: ProfileService) -> UIViewController {
        UIHostingController(
            rootView: ProfileContainerView(
                vm: ProfileViewModel(
                    profileService: profileService
                )
            )
        )
    }
}
