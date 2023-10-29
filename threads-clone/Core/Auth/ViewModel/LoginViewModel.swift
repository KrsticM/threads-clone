import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        print("DEBUG: login user...", email, password)
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}

