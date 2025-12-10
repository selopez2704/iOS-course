//
//  ContentView.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 2/12/25.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle().foregroundColor(.blue).frame(height: 100)
                Rectangle().foregroundColor(.orange).frame(height: 100)
                Rectangle().foregroundColor(.yellow).frame(height: 100)
            }
            HStack {
                Rectangle().foregroundColor(.orange).frame(height: 100)
            }
            HStack {
                Circle().foregroundColor(.green)
                Rectangle().foregroundColor(.black).frame(width: 100,height: 280)
                Circle().foregroundColor(.blue)
            }
            HStack {
                Rectangle().foregroundColor(.orange).frame(height: 100)
            }
            HStack {
                Rectangle().foregroundColor(.blue).frame(height: 100)
                Rectangle().foregroundColor(.orange).frame(height: 100)
                Rectangle().foregroundColor(.yellow).frame(height: 100)
            }
        } .background(.red)
    }
}

#Preview {
    Exercise1()
}
