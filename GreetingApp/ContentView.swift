import SwiftUI

struct ContentView: View {
    @State var name = "Dinh Tuan Anh"
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading, spacing: 15){
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }
            .padding()
        }

    }
}

#Preview {
    ContentView()
}
