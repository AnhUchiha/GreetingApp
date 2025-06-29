import SwiftUI

struct TitleCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0

    @State private var rotationAngle: Double = 0
    
    var angularGradient: AngularGradient {
        AngularGradient(colors: [.white, .green, .yellow, .red, .white], center: .center, angle: .degrees(90))
    }
    var body: some View {
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
}

#Preview {
    TitleCircleView()
}
