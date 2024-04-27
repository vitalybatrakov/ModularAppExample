import Foundation

public struct MenuItem: Identifiable {
    public let id = UUID().uuidString
    public let title: String
    public let description: String
}
