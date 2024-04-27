import Foundation

public protocol ProfileService {
    func getProfile() async throws -> Profile
}
