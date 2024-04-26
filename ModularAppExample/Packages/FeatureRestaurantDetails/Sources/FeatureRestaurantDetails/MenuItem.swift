import Foundation

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    let title: String
    let description: String
}
