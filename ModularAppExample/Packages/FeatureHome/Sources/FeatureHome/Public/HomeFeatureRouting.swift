import UIKit

public protocol HomeFeatureRouting: AnyObject {
    var source: UIViewController? { get set }
    
    func showRestaurantDetails(for item: HomeItem)
}

