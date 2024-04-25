import Foundation

struct HomeItemModel: Identifiable {
    let id: String = UUID().uuidString
    let image: String
    let title: String
    let description: String
}
