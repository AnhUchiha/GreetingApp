//
//  ContentView.swift
//  GreetingApp
//
//  Created by Tuấngg Anhhh on 26/6/25.
//

import SwiftUI

struct ContentView: View {
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
            Notifi(text: "Hello World!", colorText: Color.green)
            Notifi(text: "Welcome Swift Language", colorText: Color.gray)
            Notifi(text: "Are you ready ?", colorText: Color.yellow)
            Notifi(text: "Start Coding", colorText: Color.red)
            Notifi(text: "Boom!", colorText: .purple)
        }
    }
}

#Preview {
    ContentView()
}
