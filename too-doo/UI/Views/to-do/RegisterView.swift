//
//  RegisterView.swift
//  too-doo
//
//  Created by Nikita on 21/01/2024.
//

import SwiftUI

struct RegisterView: View {
    @State var login = ""
    @State var mail = ""
    @State var password = ""
    @State var repeatPassword = ""
    let onRegister: () -> Void
    var body: some View {
        ScrollView{
            VStack{
                TextFieldWithRoundBorders("Login", $login)
                TextFieldWithRoundBorders("Mail", $mail)
                TextFieldWithRoundBorders("Password", $password)
                TextFieldWithRoundBorders("Repeat Password", $repeatPassword)
                Button("Register", 
                       action: onRegister)
                .buttonStyle(.borderedProminent)
            }
            .padding(.horizontal, 30)
        }
        .textFieldStyle(.roundedBorder)
        .navigationTitle("Registration")
        .offset(y:180)
    }
}


#Preview {
    RegisterView(onRegister: {})
}
