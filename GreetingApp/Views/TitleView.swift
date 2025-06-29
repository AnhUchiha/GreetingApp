import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let diameter = 70.0

    @State private var rotationAngle: Double = 0
    @State private var title: LocalizedStringKey = "Exploring IOS Programming"

    let titles: [LocalizedStringKey] = [
        "Exploring IOS Programming",
        "Programming recipes",
        "Learning how to bake",
        "A quest for language"
    ]
    
    var angularGradient: AngularGradient {
        AngularGradient(colors: [.white, .green, .yellow, .red, .white], center: .center, angle: .degrees(90))
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0){
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
            
            Spacer()
            
            Circle()
                .stroke(angularGradient, lineWidth: lineWidth)
                .frame(width: diameter, height: diameter)
                .rotationEffect(.degrees(rotationAngle))
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.5)) {
                        rotationAngle += 360
                    }
                }
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
