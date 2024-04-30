import FeatureHome

enum HomeServiceFactory {
    static func make() -> HomeService {
        // TODO: Use real api service
        //        let homeService = HomeAPIService(
        //            requester: YourNetworkRequester()
        //        )
        return HomeAPIServiceStub()
    }
}
