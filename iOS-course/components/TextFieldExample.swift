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

#Preview {
    TextFieldExample()
}
