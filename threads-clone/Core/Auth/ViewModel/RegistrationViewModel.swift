import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws {
        print("DEBUG: create user here...")
        try await AuthService.shared.createUser(withEmail: email,
                                      password: password,
                                      fullname: fullname,
                                      username: username)
    }
}
