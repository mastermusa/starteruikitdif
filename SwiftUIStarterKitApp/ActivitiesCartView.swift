import SwiftUI
import Combine

class Feed: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    @Published var feedArray : [FeedItem]
    
    init(data: [FeedItem]) {
        self.feedArray = data
    }
}

struct FeedItem {
    var postID: String
    var postOwnerName: String
    var postDescription: String
    var postImage: String
    var postLikesCount: Int
}

struct FeedView: View {
    
    @ObservedObject var feedData: Feed
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                NavigationView {
                    List(self.feedData.feedArray, id: \.postID) { item in
                        PostView(feedItem: item)
                            .frame(width: geometry.size.width, height: 350)
                    }
                    .navigationBarTitle("Feed", displayMode: .inline)
                }
            }
        }
    }
}

struct PostView: View {
    var feedItem: FeedItem
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(feedItem.postOwnerName)
                    .font(.headline)
                    .padding(.leading, 10)
                    .padding(.top, 10)
                Spacer()
            }
            Image(feedItem.postImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 250)
            HStack {
                Text("\(feedItem.postLikesCount) likes")
                    .font(.caption)
                    .padding(.leading, 10)
                    .padding(.top, 10)
                Spacer()
            }
            Text(feedItem.postDescription)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .padding(.bottom, 10)
        }
    }
}
