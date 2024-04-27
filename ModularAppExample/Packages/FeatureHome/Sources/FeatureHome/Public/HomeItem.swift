import Foundation

public struct HomeItem: Identifiable {
    public let id: String = UUID().uuidString
    public let image: String
    public let title: String
    public let description: String
    
    public init(image: String, title: String, description: String) {
        self.image = image
        self.title = title
        self.description = description
    }
}
