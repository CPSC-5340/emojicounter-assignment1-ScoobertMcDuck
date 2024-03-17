//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    let emojis  = [
        "\u{1f600}",
        "\u{1f62c}",
        "\u{1f601}",
        "\u{1f602}",
        "\u{1f604}",
        "\u{1f605}",
        "\u{1f606}",
        "\u{1f607}",
        "\u{1f609}",
    
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<9) { index in
                    ActionItem(emojiCode: emojis[index])
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ActionItem: View {
    
    @State var counter = 0;
    var emojiCode : String
    
    var body: some View {
        HStack {
            Text(emojiCode)
            Text("Counter:")
                .foregroundStyle(.red)
            Text("\(counter)")
                .foregroundStyle(.red)
            Spacer()
            Image(systemName: "plus")
                .padding()
                .foregroundStyle(.red)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                    .stroke(.red, lineWidth: 2)
                )
                .imageScale(.large)
                .onTapGesture {
                    counter += 1
                }
            Image(systemName: "minus")
                .padding()
                .foregroundStyle(.red)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                    .stroke(.red, lineWidth: 2)
                )
                .imageScale(.large)
                .onTapGesture {
                    counter -= 1
                }
        }
        .padding()
    }
}


