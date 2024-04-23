import Foundation

public enum NetworkError: Error {
    /// Describes errors which occur on request creation
    case request(RequestError)
    /// Describes errors which occur on request response
    case response(ResponseError)
    
    public enum RequestError: Error {
        /// An error occurred during `URL` creation
        case invalidURL
        /// An error occurred while encoding parameters.
        case parameterEncoding(Error)
        /// An error occurred while attempting to add authentication information to the request.
        case authentication(AuthenticationError)
    }
    
    public enum ResponseError: Error {
        /// The device is not connected to the internet
        case internet(error: Error)
        /// An error occurred while decoding the response body
        case decoding(error: Error, response: Data?)
        /// The server responded with an error code
        case connection(code: Int, response: Data?)
        /// The error is unknown
        case unknown(response: Data?)
    }
    
    public enum AuthenticationError: Error {
        /// A user session could not be found
        case missingSession
        /// A user token cannot be produced for the current user session
        case missingToken
    }
}
