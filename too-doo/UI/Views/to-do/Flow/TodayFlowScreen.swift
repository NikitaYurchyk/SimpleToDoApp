import SwiftUI

enum TodayFlowRoute: Hashable{
    case todoDetail(Todo)
}


struct TodayFlowView: View {
    var body: some View {
        NavigationStack {
            ToDoListView(Date.now)
                .navigationDestination(for: MainFlowRoute.self) { route in
                    switch route {
                    case .todoDetail(let todo):
                        ItemToDoView(todo: todo)
                    case .todoList(let date):
                        ToDoListView(date)
                }
            }
        }
    }
}

#Preview {
    TodayFlowView()
}
