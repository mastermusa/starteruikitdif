import SwiftUI
import AVFoundation


struct CreateVideoView: View {
    @Binding var hideTabBar: Bool
    @State private var isRecording = false
    @State private var recordingTimer: Timer?
    @State private var recordingDuration: TimeInterval = 0
    @State private var isRecordingFinished = false
    @State private var session = AVCaptureSession()

    var body: some View {
        ZStack {
            // Assuming VideoRecordingView covers the entire screen
            VideoRecordingView(session: session)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()

                // Record Button
                Button(action: {
                    isRecording.toggle()
                    if isRecording {
                        startRecording()
                    } else {
                        stopRecording()
                    }
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 90, height: 90)
                            .foregroundColor(.white)

                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(isRecording ? .red : .white)
                    }
                    .animation(.easeIn)
                    .padding(.bottom, 30)
                }

                if isRecording {
                    Text("\(recordingDuration)")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                }
            }

            // Back Button
            VStack {
                HStack {
                    Button(action: {
                        hideTabBar = false
                    }) {
                        Image(systemName: "arrow.backward")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .padding()
                    }
                    Spacer()
                }
                .padding(.top, 10)

                Spacer()
            }
            .padding()

        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        .background(
            NavigationLink(destination: ReviewScreen(), isActive: $isRecordingFinished) {
                EmptyView()
            }
            .hidden()
        )
    }

    private func startRecording() {
        recordingDuration = 0
        recordingTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            recordingDuration += 1
        }
    }

    private func stopRecording() {
        recordingTimer?.invalidate()
        recordingTimer = nil
        isRecordingFinished = true
    }
}
