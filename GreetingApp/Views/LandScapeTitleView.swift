import SwiftUI

struct LandScapeTitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            TitleTextView()
            TitleCircleView()
        }
        .padding()
    }
}

#Preview {
    LandScapeTitleView()
}
