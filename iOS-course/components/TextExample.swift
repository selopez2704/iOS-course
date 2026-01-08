//
//  SwiftUIView.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 10/12/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).bold().background(Color.blue)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 40, weight:.bold, design: .monospaced))
                .italic()
                .underline()
                .foregroundColor(.blue)
            Text("Sebas Sebas Sebas Sebas Sebas Sebas Sebas Sebas ")
                .font(.headline).frame(width: 120).lineLimit(3).lineSpacing(10)
        }
    }
}

#Preview {
    TextExample()
}
