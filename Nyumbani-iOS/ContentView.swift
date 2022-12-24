//
//  ContentView.swift
//  Nyumbani-iOS
//
//  Created by Leonard Mutugi on 24/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "heart")
                .foregroundColor(.orange)
               
            TextField("Enter your name", text: $username)
                .textFieldStyle(.roundedBorder)
                .padding()
                .frame(maxWidth: .infinity)
            
            TextField("Enter your password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Login") {
                print("Hello, \(username) \(password)!")
            }
            .buttonStyle(.borderedProminent)
            
        }
        .fixedSize(horizontal: true, vertical: false)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
