import Foundation

public struct MenuItem: Identifiable, Decodable {
    public var id = UUID().uuidString
    public let title: String
    public let description: String
    
    public init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
