import FeatureProfile

enum ProfileServiceFactory {
    static func make() -> ProfileService {
        // TODO: Use real api service
        //        let profileService = ProfileAPIService(
        //            requester: YourNetworkRequester()
        //        )
        return ProfileServiceStub()
    }
}
