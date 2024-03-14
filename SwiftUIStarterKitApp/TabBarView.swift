import SwiftUI

struct TabBarView: View {
    @State private var hideTabBar = false

    var body: some View {
        TabView(selection: $hideTabBar) {
            createActivitiesView()
            createCreatePostView()
            createFeedView()
            createAccountView()
        }
        .accentColor(.primary)
        .sheet(isPresented: $hideTabBar) {
            CreateVideoView(hideTabBar: $hideTabBar)
        }
    }
    
    private func createActivitiesView() -> some View {
        NavigationView {
            ActivitiesContentView(activtiesData: Activities(data: ActivitiesMockStore.activityData, items: ActivitiesMockStore.activities))
        }
        .tabItem {
            Image("activity-1")
                .resizable()
                .frame(width: 25, height: 25)
            Text("Activities")
        }
        .tag(false)
    }
    
    private func createCreatePostView() -> some View {
        NavigationView {
            EmptyView()
        }
        .tabItem {
            Image("create-post")
                .resizable()
                .frame(width: 25, height: 25)
            Text("Create Post")
        }
        .tag(true)
    }
    
    private func createFeedView() -> some View {
        NavigationView {
            FeedContentView()
        }
        .tabItem {
            Image("")
                .resizable()
                .frame(width: 25, height: 25)
            Text("Feed")
        }
        .tag(false)
    }
    
    private func createAccountView() -> some View {
        NavigationView {
            AccountView()
        }
        .tabItem {
            Image("profile-glyph-icon")
                .resizable()
                .frame(width: 25, height: 25)
            Text("Profile")
        }
        .tag(false)
    }
}

struct FeedContentView: View {
    var body: some View {
        Text("Feed Content")
    }
}
