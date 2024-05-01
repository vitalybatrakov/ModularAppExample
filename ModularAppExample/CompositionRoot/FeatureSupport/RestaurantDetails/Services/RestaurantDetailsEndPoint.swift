import YourNetwork

// TODO: Add real enpoint params
struct RestaurantDetailsEndPoint: EndPoint {
    var host: String = ""
    var scheme: String = ""
    var path: String  = ""
    var method: YourNetwork.HTTPMethod = .get
    var header: [String : String]?
    var body: [String : String]?
    var queryParams: [String : String]?
    var pathParams: [String : String]?
}
