import UIKit

final class TabBarControllerDelegate: NSObject, UITabBarControllerDelegate {
    
    private let feedbackGenerator = UIImpactFeedbackGenerator(style: .light)
    
    func tabBarController(
        _ tabBarController: UITabBarController,
        didSelect viewController: UIViewController
    ) {
        feedbackGenerator.impactOccurred()
    }
}
