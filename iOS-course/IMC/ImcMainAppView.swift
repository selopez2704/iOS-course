//
//  ImcMainAppView.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 12/01/26.
//

import SwiftUI

struct ImcMainAppView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: ImcView()){
                Text("IMC calculator")
            }
        }
    }
}

#Preview {
    ImcMainAppView()
}
