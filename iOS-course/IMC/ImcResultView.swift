//
//  ImcResultView.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 14/01/26.
//

import SwiftUI

struct ImcResultView: View {
    var height:Double
    var weight:Int
    
    var body: some View {
        var imc:Double = height/(sqrt(Double(weight)))
        
        ZStack {
            Color.ImcPalette.background.ignoresSafeArea()
            VStack(spacing:20){
                Image(systemName: "chart.line.uptrend.xyaxis.circle").resizable().frame(width: 100, height: 100)
                    .foregroundColor(.ImcPalette.font)
                Text("Results").foregroundColor(.ImcPalette.font).bold().font(.largeTitle)
                Text("IMC: \(Double(imc).formatted(.number.precision(.fractionLength(2))))").foregroundColor(.ImcPalette.font).bold().font(.largeTitle)
            }.padding(20).frame(maxWidth: .infinity).background(Color.ImcPalette.tertiary)
                .clipShape(RoundedRectangle(cornerRadius: 30)).padding(.horizontal, 20)
        }
    }
}

#Preview {
    ImcResultView(height:150, weight:150)
}
