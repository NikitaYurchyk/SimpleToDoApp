import SwiftUI

enum AppFlowState{
    case AUTH
    case MAIN
}

struct AppFlowScreen: View {
    @State var appFlowState: AppFlowState = .AUTH
    var body: some View {
        switch appFlowState {
        case .AUTH:
            AuthFlowScreen(onComplete: {
                appFlowState = .MAIN
            })
        case .MAIN:
            MainFlowScreen()
        }
    }
}

#Preview {
    AppFlowScreen()
}
