//
//  ImageExample.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 10/12/25.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image(systemName: "face.dashed").resizable().frame(width: 100, height: 100)
        Image("skyrimLogo")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 200)
        Image("skyrimLogo")
            .resizable()
            .scaledToFill()
            .frame(width: 50, height: 200)
    }
}

#Preview {
    ImageExample()
}
