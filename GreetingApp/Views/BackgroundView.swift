import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.myBlue, .myPurple], startPoint: .topTrailing, endPoint: UnitPoint.bottomTrailing)
                        .ignoresSafeArea()
                        .opacity(0.4)
    }
}

#Preview {
    BackgroundView()
}
