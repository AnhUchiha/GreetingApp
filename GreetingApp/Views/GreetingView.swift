import SwiftUI

struct GreetingView: View {
    @Binding var selectedLanguage: String
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading, spacing: 15){
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
                HStack{
                    Spacer()
                    LanguageOptionsView(selectedLanguage: $selectedLanguage)
                            .padding()
                }
            }
            .padding()
        }
    }
}

#Preview {
    @Previewable @State var selectedLanguage = "en"
    GreetingView(selectedLanguage: $selectedLanguage)
}
