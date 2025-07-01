import SwiftUI

struct LandscapeView: View {
    @Binding var selectedLanguage: String
    var body: some View {
        ZStack {
            BackgroundView()
            HStack(){
                VStack(alignment: .leading){
                    Spacer()
                    LandScapeTitleView()
                    Spacer()
                    LanguageOptionsView(selectedLanguage: $selectedLanguage)
                    Spacer()
                }
                Spacer()
                MessagesView()
                    .padding(.top, 20)
            }
            .padding()
        }
    }
}

#Preview {
    @Previewable @State var selectedLanguage = "en"
    LandscapeView(selectedLanguage: $selectedLanguage)
}
