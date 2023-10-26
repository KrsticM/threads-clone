import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            // bio and stats
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 12) {
                    // fullname and username
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Charles Leclerc")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("charles_leclerc")
                            .font(.subheadline)
                    }
                    
                    Text("Formula 1 driver for Scuderia Ferrari")
                        .font(.subheadline)
                    
                    Text("2 followers")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                CircularProfileImageView()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
