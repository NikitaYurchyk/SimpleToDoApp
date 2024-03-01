import SwiftUI

enum AuthFlowRoute: Hashable{
    case register
}
struct AuthFlowScreen: View {
    let onComplete:() -> Void
    var body: some View {
        NavigationStack{
            LoginView(onLogin: onComplete)
                .navigationDestination(for: AuthFlowRoute.self) { route in
                    switch route{
                    case .register:
                        RegisterView(onRegister: onComplete)
                    }
            
                }
        }
    }
}
                                    


#Preview {
    AuthFlowScreen(onComplete: {})
}
