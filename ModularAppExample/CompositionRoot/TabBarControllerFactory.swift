import UIKit

enum TabBarControllerFactory {
    
    static func make() -> UITabBarController {
        let tabBarController = UITabBarController()
        
        let homeItem = UITabBarItem()
        homeItem.title = "Home"
        homeItem.image = UIImage(systemName: "house.fill")
        
        let homeVC = UIViewController()
        homeVC.tabBarItem = homeItem
        
        let profileItem = UITabBarItem()
        profileItem.title = "Profile"
        profileItem.image = UIImage(systemName: "person.fill")
        
        let profileVC = UIViewController()
        profileVC.tabBarItem = profileItem
        
        tabBarController.view.backgroundColor = .white

        tabBarController.viewControllers = [homeVC, profileVC]
        
        return tabBarController
    }
}

