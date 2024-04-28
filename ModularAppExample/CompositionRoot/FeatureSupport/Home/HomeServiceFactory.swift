import FeatureHome

enum HomeServiceFactory {
    static func make() -> HomeService {
        //        let homeService = HomeAPIService(
        //            requester: YourNetworkRequester()
        //        )
        return HomeAPIServiceStub()
    }
}
