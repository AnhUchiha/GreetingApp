//
//  ContentView.swift
//  GreetingApp
//
//  Created by Tuấngg Anhhh on 26/6/25.
//

import SwiftUI

struct ContentView: View {
    let message :[DataItemModel] = [
        .init(text: "Hello World!", colorText: Color.green),
        .init(text: "Welcome Swift Language", colorText :Color.gray),
        .init(text: "Are you ready ?", colorText: Color.yellow),
        .init(text: "Start Coding", colorText: Color.red),
        .init(text: "Boom!", colorText: .purple),
    ]
    
    func Notifi(text: String, colorText: Color)-> some View {
        Text(text)
            .font(.title)
            .foregroundStyle(.white)
            .fontWeight(.semibold)
            .padding()
            .background(colorText)
            .clipShape(.rect(cornerRadius: 20))
            .shadow(color: colorText, radius: 10, x: 5, y: 5)
            .padding(5)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            ForEach(message) { ele in
                Notifi(text: ele.text, colorText: ele.colorText)
            }
        }
    }
}

#Preview {
    ContentView()
}
