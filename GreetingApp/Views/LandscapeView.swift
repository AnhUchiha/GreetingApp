import SwiftUI

struct LandscapeView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack(){
                LandScapeTitleView()
                Spacer()
                MessagesView()
                    .padding(.top, 20)
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeView()
}
