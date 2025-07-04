import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack {
            TitleTextView()
            Spacer()
            TitleCircleView()
        }
        .padding()
    }
}

#Preview {
    VStack{
        TitleView()
        Spacer()
    }
}
