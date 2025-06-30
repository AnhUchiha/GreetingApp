import SwiftUI

struct GreetingView: View {
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
                    LanguageOptionsView()
                    .padding()
                }
            }
            .padding()
        }
    }
}

#Preview {
    GreetingView()
}
