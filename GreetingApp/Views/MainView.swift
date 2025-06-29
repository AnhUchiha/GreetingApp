import SwiftUI

// Compact width, regular height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingView()
        } else {
            LandscapeView()
        }
    }
}

#Preview {
    MainView()
}
