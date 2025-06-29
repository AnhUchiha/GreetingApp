import SwiftUI

struct TitleTextView: View {
    @State private var title: LocalizedStringKey = "Exploring IOS Programming"
    
    let titles: [LocalizedStringKey] = [
        "Exploring IOS Programming",
        "Programming recipes",
        "Learning how to bake",
        "A quest for language"
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Greeting")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(title)
                .font(.headline)
                .fontWeight(.thin)
                .onTapGesture {
                    title = titles.randomElement() ?? LocalizedStringKey("Exploring IOS Programming")
                }
        }
    }
}

#Preview {
    TitleTextView()
}
