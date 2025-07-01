import SwiftUI

@main
struct GreetingAppApp: App {
    @AppStorage("selectedLanguage") var selectedLanguage: String = "en"
    
    var body: some Scene {
        WindowGroup {
            MainView(selectedLanguage: $selectedLanguage)
                .environment(\.locale, Locale(identifier: selectedLanguage))
                .id(selectedLanguage)
        }
    }
}
