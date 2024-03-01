import SwiftUI


struct HistoryFlowScreen: View {
    var body: some View {
        NavigationStack{
            HistoryToDoListView()
                .navigationDestination(for: MainFlowRoute.self){ route in
                    switch route{
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
    HistoryFlowScreen()
}
