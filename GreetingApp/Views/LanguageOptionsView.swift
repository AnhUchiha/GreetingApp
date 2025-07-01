import SwiftUI

struct LanguageOptionsView: View {
    @Binding var selectedLanguage: String
    @State private var showMenu = false
    
    var body: some View {
        VStack{
            Menu {
                Button("🇻🇳 Tiếng Việt") {
                    selectedLanguage = "vi"
                    print("🇻🇳 Selected Vietnamese via Menu")
                }
                Button("🇺🇸 English") {
                    selectedLanguage = "en"
                    print("🇺🇸 Selected English via Menu")
                }
            } label: {
                Image(systemName: "gearshape.fill")
                    .font(.title2)
            }
            
//            Text("Language :  \(selectedLanguage)")
        }
    }
}

#Preview {
    @Previewable @State var selectedLanguage = "en"
    LanguageOptionsView(selectedLanguage: $selectedLanguage)
}
