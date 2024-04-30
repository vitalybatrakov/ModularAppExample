import FeatureProfile
import YourNetwork

struct ProfileAPIService: ProfileService {
    
    private let requester: Requester
    
    init(requester: Requester) {
        self.requester = requester
    }
    
    func getProfile() async throws -> Profile {
        try await requester.sendRequest(endPoint: ProfileEndPoint())
    }
}

struct ProfileServiceStub: ProfileService {
    func getProfile() async throws -> FeatureProfile.Profile {
        Profile(
            image: "person.fill",
            name: "John Smith",
            bio: "Coffee & Pizza Lover"
        )
    }
}
