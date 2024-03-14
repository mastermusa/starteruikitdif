import SwiftUI
import AVKit
import UIKit

struct ReviewScreen: View {
    @State var player: AVPlayer?
    
    var body: some View {
        VStack {
            if let player = player {
                #if os(iOS)
                if #available(iOS 14.0, *) {
                    VideoPlayer(player: player)
                        .frame(height: 400)
                } else {
                    VideoPlayerRepresentable(player: player)
                        .frame(height: 400)
                }
                #else
                Text("Video playback not supported on this platform")
                #endif
            } else {
                Text("No video to preview")
            }
            
            NavigationLink(destination: EditVideoView()) {
                Text("Edit Video")
            }
            
            NavigationLink(destination: PostScreen()) {
                Text("Post Video")
            }
        }
        .onAppear {
            // replace with your video URL
            if let url = URL(string: "https://example.com/video.mp4") {
                self.player = AVPlayer(url: url)
            }
        }
    }
}

// Create a UIViewRepresentable for video playback on iOS versions prior to 14
struct VideoPlayerRepresentable: UIViewRepresentable {
    let player: AVPlayer
    
    func makeUIView(context: Context) -> UIView {
        let playerView = UIView(frame: .zero)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = playerView.bounds
        playerLayer.videoGravity = .resizeAspect
        playerView.layer.addSublayer(playerLayer)
        return playerView
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        guard let playerLayer = uiView.layer.sublayers?.first as? AVPlayerLayer else { return }
        playerLayer.player = player
        playerLayer.frame = uiView.bounds
    }
}
