//
//  ContentView.swift
//  GreetingApp
//
//  Created by Tuấngg Anhhh on 26/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.system(size: 33))
            Text("Hello, world!")
                .font(.largeTitle)
                .padding()
                .background(Color.blue)
                .clipShape(.capsule)
                .shadow(color: .blue, radius: 10, x: 5, y: 5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
