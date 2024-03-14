import SwiftUI

struct FeedView: View {
    @State private var hideTabBar: Bool = false
    @State private var isPresentingCreateVideoView: Bool = false

    var body: some View {
        #if os(iOS)
        if #available(iOS 15.0, *) {
            TabView(selection: $hideTabBar) {
                createActivitiesView()
                createCreatePostView()
                createFeedContentView()
                createAccountView()
            }
            .accentColor(.primary)
            .fullScreenCover(isPresented: $isPresentingCreateVideoView) {
                CreateVideoView(hideTabBar: $hideTabBar)
            }
        } else {
            createLegacyTabView()
        }
        #else
        createLegacyTabView()
        #endif
    }

    @ViewBuilder
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

    @ViewBuilder
    private func createCreatePostView() -> some View {
        Button(action: {
            isPresentingCreateVideoView = true
        }) {
            Image("create-post")
                .resizable()
                .frame(width: 25, height: 25)
            Text("Create Post")
        }
        .tabItem {
            Image(systemName: "plus")
            Text("Create")
        }
        .tag(true)
    }

    @ViewBuilder
    private func createFeedContentView() -> some View {
        Text("Feed Content") // Replace this with your actual feed content view
            .tabItem {
                Image("image")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Feed")
            }
            .tag(false)
    }

    @ViewBuilder
    private func createAccountView() -> some View {
        NavigationView {
            AccountView()
        }
        .tabItem {
            Image("profile-glyph-icon")
                .resizable()
                .frame(width: 25, height: 25)
            Text("Account")
        }
        .tag(false)
    }

    @ViewBuilder
    private func createLegacyTabView() -> some View {
        TabView {
            createActivitiesView()
            createCreatePostView()
            createFeedContentView()
            createAccountView()
        }
        .accentColor(.primary)
        .sheet(isPresented: $isPresentingCreateVideoView) {
            CreateVideoView(hideTabBar: $hideTabBar)
        }
    }
}
