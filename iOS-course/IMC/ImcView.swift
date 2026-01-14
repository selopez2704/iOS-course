//
//  IMC-navigation.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 12/01/26.
//

import SwiftUI

struct ImcView: View {
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.ImcPalette.font]
    }
    
    @State var gender:Int = 0 // 0 for female and 1 for male
    @State var height:Double = 150
    @State var age:Int = 24
    @State var weight:Int = 80
    
    var body: some View {
        ZStack{
            Color.ImcPalette.background.ignoresSafeArea()
            
            VStack{
                HStack(spacing: 10){
                    ToggleButtonView(imageName: "sun.max", text: "Male", gender: 1, selectedGender: $gender)
                    ToggleButtonView(imageName: "moon", text: "Female", gender: 0, selectedGender: $gender)
                }
                RangeView(height:$height)
                HStack(spacing: 10){
                    IncrementalHandler(label:"Age", number:$age)
                    IncrementalHandler(label:"Weight(kg)", number:$weight)
                }
                Button(action: {}){
                    Text("Calculate").foregroundColor(.ImcPalette.font).font(.largeTitle).bold()
                }.frame(maxWidth: .infinity).padding(.vertical, 15).background(Color.ImcPalette.tertiary).cornerRadius(30)
                
            }.padding(.horizontal, 10)
        }.navigationTitle("IMC calculator")
//            .toolbar {
//                ToolbarItem(placement: .principal){
//                    Text("IMC calculator 2.0").foregroundColor(.ImcPalette.font)
//                }
//            }

    }
}


struct ToggleButtonView: View {
    var imageName:String
    var text:String
    var gender:Int
    @Binding var selectedGender:Int
    
    var body: some View {
        Button(action: { selectedGender = gender }){
            VStack(spacing:20){
                Image(systemName: imageName).resizable().frame(width: 100, height: 100)
                    .foregroundColor(.ImcPalette.font)
                Text(text).foregroundColor(.ImcPalette.font).bold().font(.largeTitle)
            }.padding(20).frame(maxWidth: .infinity)
        }.background(selectedGender == gender ? Color.ImcPalette.tertiary : Color.ImcPalette.secondary).cornerRadius(30)
            .animation(.spring, value: selectedGender)
    }
}


struct RangeView: View {
    @Binding var height: Double
    
    var body: some View {
        VStack {
            Text("Height:").foregroundColor(.ImcPalette.font).font(.largeTitle)
            Text("\(Int(height)) cm").foregroundColor(.ImcPalette.font).font(.largeTitle).bold()
            
            Slider(value: $height, in: 0...280)
                .tint(.ImcPalette.primary).padding(.horizontal, 20)
        }.padding(.vertical, 40).background(Color.ImcPalette.secondary).cornerRadius(30)
    }
}

struct IncrementalHandler: View {
    let label:String
    @Binding var number:Int
    
    var body: some View {
        VStack{
            Text(label).foregroundColor(.ImcPalette.font).font(.largeTitle)
            Text("\(Int(number))").foregroundColor(.ImcPalette.font).font(.largeTitle).bold()
            HStack{
                Button(action: {number -= 1}) {
                    Image(systemName: "minus")
                        .font(.title.bold())
                        .frame(width: 60, height: 60)
                        .background(Color.ImcPalette.tertiary)
                        .foregroundStyle(Color.ImcPalette.font)
                        .clipShape(Circle())
                }
                Button(action: {number += 1}) {
                    Image(systemName: "plus")
                        .font(.title.bold())
                        .frame(width: 60, height: 60)
                        .background(Color.ImcPalette.tertiary)
                        .foregroundStyle(Color.ImcPalette.font)
                        .clipShape(Circle())
                }
            }
        }.frame(maxWidth: .infinity).padding(.vertical, 40).background(Color.ImcPalette.secondary).cornerRadius(30)
    }
}


#Preview {
    ImcView()
}
