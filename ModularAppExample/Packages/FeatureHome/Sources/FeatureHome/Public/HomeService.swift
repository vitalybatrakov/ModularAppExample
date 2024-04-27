import Foundation

public protocol HomeService {
    func getHomeItems() async throws -> [HomeItem]
}
