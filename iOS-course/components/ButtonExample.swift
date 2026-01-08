//
//  ButtonExample.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 11/12/25.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/){
            print("Hello, world!")
        } .buttonStyle(.borderedProminent).tint(.mint)
        Button(
            action: {
                print("Hello")
            },
            label: {
                Text("Hello")
            }
        )
        Button() {
        } label: {
          Text("Hi")
        }.buttonStyle(.borderedProminent).tint(.orange).buttonBorderShape(.roundedRectangle(radius:5))

        Button(role: .destructive) {
        } label: {
          Text("Destructive")
        }
    }
}

struct CounterView : View {
    @State private var count:Int = 0
    private var onAction: (() -> Void)?
    
    var body: some View {
        Text("count: " + String(count))
        Button() {
            count += 1
            onAction?()
        } label: {
            Text("Count").foregroundStyle(Color.black).bold().font(Font.title)
        }.buttonStyle(.borderedProminent).tint(.purple).buttonBorderShape(.roundedRectangle(radius:5))
    }
    
    func onTapGesture(perform action: @escaping () -> Void) -> some View {
        var copy = self
        copy.onAction = action
        return copy
    }
}

#Preview {
    CounterView()
}
