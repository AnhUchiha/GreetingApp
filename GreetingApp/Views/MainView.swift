import SwiftUI

// Compact width, regular height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var selectedLanguage: String
    
    var body: some View {
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingView(selectedLanguage: $selectedLanguage)
        } else {
            LandscapeView(selectedLanguage: $selectedLanguage)
        }
    }
}

#Preview {
    @Previewable @State var selectedLanguage = "en"
    MainView(selectedLanguage: $selectedLanguage)
}
