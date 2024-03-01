import SwiftUI

enum MainFlowRoute: Hashable{
    case todoDetail(Todo)
    case todoList(Date)
}


struct MainFlowScreen: View {
    var body: some View {
           TabView {
               TodayFlowView()
                   .tabItem {
                       Image(systemName: "01.square.fill")
                       Text("Today")
                   }
               HistoryFlowScreen()
                   .tabItem {
                       Image(systemName: "calendar")
                       Text("История")
                   }
           }
       }
}

#Preview {
    MainFlowScreen()
}
