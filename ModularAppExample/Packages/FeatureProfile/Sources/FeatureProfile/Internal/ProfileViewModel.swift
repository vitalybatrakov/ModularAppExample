import Foundation

final class ProfileViewModel: ObservableObject {
    
    private let profileService: ProfileService
    
    @Published var profile: Profile?
    
    init(
        profileService: ProfileService
    ) {
        self.profileService = profileService
        
        fetchProfile()
    }
    
    func fetchProfile()  {
        Task {
            do {
                profile = try await profileService.getProfile()
            } catch {
                print(error)
            }
        }
    }
}
