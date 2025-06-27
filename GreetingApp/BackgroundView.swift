import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.blue, Color(red: 139/255, green: 80/255, blue: 240/255)], startPoint: .topTrailing, endPoint: UnitPoint.bottomTrailing)
                        .ignoresSafeArea()
                        .opacity(0.4)
    }
}

#Preview {
    BackgroundView()
}
