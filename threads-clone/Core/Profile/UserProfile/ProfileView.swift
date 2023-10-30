import SwiftUI

struct ProfileView: View {
    let user: User

    var body: some View {
        ScrollView(showsIndicators: false) {
            // bio and stats
            VStack(spacing: 20) {
                ProfileHeaderView(user: user)
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                // User content list view
                UserContentListView(user: user)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
    }
}

#Preview {
    let user = User(id: UUID().uuidString, fullname: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1")
    return ProfileView(user: user)
}
