import Foundation

public protocol Requester {
    func sendRequest<T: Decodable>(endPoint: EndPoint) async throws -> T
}

public struct YourNetworkRequester: Requester {
    
    public init() {}
    
    public func sendRequest<T: Decodable>(endPoint: EndPoint) async throws -> T {
       let urlRequest = try RequestFactory.makeRequest(endPoint: endPoint)
       let (data, response) = try await URLSession.shared.data(for: urlRequest)
       return try handleResponse(data: data, response: response)
    }
    
    private func handleResponse<T: Decodable>(
        data: Data?,
        response: URLResponse
    ) throws -> T {
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.response(.unknown(response: data))
        }
        guard 200...299 ~= httpResponse.statusCode else {
            throw NetworkError.response(.connection(code: httpResponse.statusCode,
                                                    response: data))
        }
        guard let data = data else {
            throw NetworkError.response(.unknown(response: data))
        }
        do {
            let decodedResponse = try JSONDecoder().decode(T.self, from: data)
            return decodedResponse
        } catch {
            throw NetworkError.response(
                .decoding(error: error, response: data)
            )
        }
    }
}
