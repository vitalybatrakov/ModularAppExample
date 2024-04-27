import Foundation

public struct RestaurantDetails {
    public let image: String
    public let title: String
    public let description: String
    public let items: [MenuItem]
    
    public init(image: String, title: String, description: String, items: [MenuItem]) {
        self.image = image
        self.title = title
        self.description = description
        self.items = items
    }
}
