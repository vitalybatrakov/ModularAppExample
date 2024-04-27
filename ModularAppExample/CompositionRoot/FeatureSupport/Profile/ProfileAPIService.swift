import FeatureProfile

struct ProfileAPIService: ProfileService {
    func getProfile() async throws -> Profile {
        return .init(image: "", name: "", bio: "")
    }
}
