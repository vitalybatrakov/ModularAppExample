import FeatureHome
import FeatureProfile
import SwiftUI
import UIKit

enum TabBarControllerFactory {
    
    static func make(delegate: TabBarControllerDelegate) -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.view.backgroundColor = .white
        tabBarController.tabBar.tintColor = .systemPink
        tabBarController.viewControllers = makeViewControllers()
        tabBarController.delegate = delegate
        return tabBarController
    }
    
    private static func makeViewControllers() -> [UIViewController] {
        [makeHome(), makeProfile()]
    }
    
    private static func makeHome() -> UIViewController {
        let homeItem = UITabBarItem()
        homeItem.title = "Home"
        homeItem.image = UIImage(systemName: "house.fill")
        let homeVC = HomeCompositionFactory.make()
        homeVC.tabBarItem = homeItem
        return homeVC
    }
    
    private static func makeProfile() -> UIViewController {
        let profileItem = UITabBarItem()
        profileItem.title = "Profile"
        profileItem.image = UIImage(systemName: "person.fill")
        let profileVC = ProfileCompositionFactory.make()
        profileVC.tabBarItem = profileItem
        return profileVC
    }
}

