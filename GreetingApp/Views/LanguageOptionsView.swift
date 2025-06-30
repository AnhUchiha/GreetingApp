import SwiftUI

struct LanguageOptionsView: View {
    @State private var selectedLanguage = "Tiếng Việt"
    @State private var showMenu = false
    
    let languages = ["Tiếng Việt", "English"]
    
    var body: some View {
        VStack() {
            Button{
                showMenu = true
            } label: {
                Image(systemName: "gearshape.fill")
                    .font(.title2)
            }
                    
//            Text("Đã chọn: \(selectedLanguage)")
//                .padding(.top)
        }
        .actionSheet(isPresented: $showMenu) {
            ActionSheet(
                title: Text("Select Language"),
                buttons: languages.map { language in
                    .default(Text(language)) {
                        selectedLanguage = language
                    }
                } + [.cancel()]
            )
        }
    }
}

#Preview {
    LanguageOptionsView()
}
