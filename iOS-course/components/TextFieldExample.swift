//
//  TextFieldExample.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 11/12/25.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email:String = ""
    var body: some View {
        TextField("email",text:$email)
            .keyboardType(.emailAddress)
            .textContentType(.emailAddress)
        
        CounterView().onTapGesture {print(email)}
    }
}


struct FormExample: View {
    @State var Fname:String = ""
    @State var Lname:String = ""
    
    var body: some View {
        VStack (spacing:36) {
            InfoField(label: "First Name", text: $Fname)
            InfoField(label: "Last Name", text: $Lname)
        }.padding()
    }
}

struct InfoField: View {
    let label:String
    @Binding var text:String
    @FocusState var isTyping:Bool
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text).padding(.leading)
                .frame(height:55).focused($isTyping)
                .background(isTyping ? .blue : .gray, in: RoundedRectangle(cornerRadius: 14).stroke(lineWidth: 2))
            Text(label)
                .background(.ftitle.opacity(isTyping || !text.isEmpty ? 1 : 0))
                .foregroundStyle(isTyping ? .blue : .gray)
                .padding(.leading).offset(y:isTyping || !text.isEmpty ? -30 : 0)
                .onTapGesture {
                    isTyping.toggle()
                }
        }
        .animation(.linear(duration:0.2),value: isTyping)
                
    }
}

#Preview {
    FormExample()
}
