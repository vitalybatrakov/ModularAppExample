import Foundation

public struct Profile: Decodable {
    public let image: String
    public let name: String
    public let bio: String
    
    public init(image: String, name: String, bio: String) {
        self.image = image
        self.name = name
        self.bio = bio
    }
}
