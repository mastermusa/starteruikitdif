import SwiftUI

struct AccountView: View {
    @State var username: String = "James"
    @State var userBio: String = "Welcome to my DIF profile! 🎥"
    @State var following: Int = 180
    @State var followers: Int = 2320
    @State var likes: Int = 12500
    @State var badge: String = "🔥 Trendsetter 🔥"  // Add your badge here
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Image("profile_avatar")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("@\(username)")
                            .font(.title)
                            .bold()
                        Text(userBio)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                Text(badge)
                    .padding()
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10)
                
                HStack {
                    VStack {
                        Text("Following")
                            .font(.headline)
                            .foregroundColor(.gray)
                        Text("\(following)")
                            .font(.title)
                            .bold()
                    }
                    VStack {
                        Text("Followers")
                            .font(.headline)
                            .foregroundColor(.gray)
                        Text("\(followers)")
                            .font(.title)
                            .bold()
                    }
                    VStack {
                        Text("Likes")
                            .font(.headline)
                            .foregroundColor(.gray)
                        Text("\(likes)")
                            .font(.title)
                            .bold()
                    }
                }
            }
            
            Section(header: Text("Videos").font(.title).bold()) {
                // This should be replaced by a dynamic list of the user's videos
                ForEach(0..<9) { _ in
                    Image("placeholder_video_thumbnail")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }
        }
        .navigationBarTitle("Profile", displayMode: .inline)
    }
}
