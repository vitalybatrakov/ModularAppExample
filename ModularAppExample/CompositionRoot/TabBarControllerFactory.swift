import FeatureHome
import FeatureProfile
import SwiftUI
import UIKit

enum TabBarControllerFactory {
    
    static func make() -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.view.backgroundColor = .white
        tabBarController.viewControllers = makeViewControllers()
        return tabBarController
    }
    
    private static func makeViewControllers() -> [UIViewController] {
        [makeHome(), makeProfile()]
    }
    
    private static func makeHome() -> UIViewController {
        let homeItem = UITabBarItem()
        homeItem.title = "Home"
        homeItem.image = UIImage(systemName: "house.fill")
        let homeVC = HomeFactory.make(featureRouter: HomeFeatureRouter())
        homeVC.tabBarItem = homeItem
        return homeVC
    }
    
    private static func makeProfile() -> UIViewController {
        let profileItem = UITabBarItem()
        profileItem.title = "Profile"
        profileItem.image = UIImage(systemName: "person.fill")
        let profileVC = ProfileFactory.make()
        profileVC.tabBarItem = profileItem
        return profileVC
    }
}

