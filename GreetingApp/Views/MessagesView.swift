import SwiftUI

struct MessagesView: View {
    @State var message :[DataItemModel] = [
        .init(text: "Hello World!", colorText: Color.green),
        .init(text: "Welcome Swift Language", colorText :Color.gray),
        .init(text: "Are you ready ?", colorText: Color.yellow),
        .init(text: "Start Coding", colorText: Color.red),
        .init(text: "Boom!", colorText: .purple),
    ]
    
    var colors: [Color] = [
        .red,
        .green,
        .cyan,
        .blue,
        .yellow,
        .orange,
        .purple,
        .pink,
        .mint,
        .indigo
    ]
    
    func Notifi(text: LocalizedStringKey, colorText: Color, onTap: @escaping () -> Void)-> some View {
        Text(text)
            .font(.title)
            .foregroundStyle(.white)
            .fontWeight(.semibold)
            .padding()
            .background(colorText)
            .clipShape(.rect(cornerRadius: 20))
            .shadow(color: colorText, radius: 5, x: 5, y: 5)
            .padding(5)
            .onTapGesture {
                onTap()
            }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            ForEach(message.indices, id: \.self) { index in
                Notifi(text: message[index].text, colorText: message[index].colorText){
                    withAnimation {
                        message[index].colorText = colors.randomElement() ?? .cyan
                    }
                }
            }
        }
    }
}

#Preview {
    MessagesView()
}
