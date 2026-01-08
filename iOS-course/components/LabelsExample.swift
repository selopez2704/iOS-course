//
//  LabelsExample.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 10/12/25.
//

import SwiftUI

struct LabelsExample: View {
    var body: some View {
        Label("Classic label", systemImage: "face.smiling.inverse")
        Label(
            title : {Text("Hello, world!")},
            icon : {Image(systemName:"face.smiling.inverse").resizable().frame(width: 50, height: 50)}
        )
        Label(
            title : {Text("Hi there!")},
            icon : {Image("skyrimLogo").resizable().frame(width: 100, height: 100)}
        )
    }
}

#Preview {
    LabelsExample()
}
