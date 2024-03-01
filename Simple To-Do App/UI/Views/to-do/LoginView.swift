import SwiftUI

struct LoginView: View {
    @State var login = ""
    @State var password = ""
    let onLogin: () -> Void
    var body: some View {
        ScrollView{
            VStack{
                TextFieldWithRoundBorders("Login", $login)
                TextFieldWithRoundBorders("Password", $password)
                Button("Enter", action: onLogin).buttonStyle(.borderedProminent)
                NavigationLink("Sign-Up", value: AuthFlowRoute.register)
                    .fontWeight(.medium)
                    
            }.padding(30)
        }.textFieldStyle(.roundedBorder)
         .navigationTitle("Login")
         .offset(y:180)

    }
}

#Preview {
    LoginView(onLogin: {})
}
