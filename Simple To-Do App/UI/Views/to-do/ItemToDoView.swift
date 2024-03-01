import SwiftUI

struct ItemToDoView: View {
    let todo: Todo
    var body: some View{
        ScrollView{
            VStack(alignment: .leading){
                Text(todo.title)
                    .font(.title)
                Text(todo.description)
                Text(todo.date, format: .dateTime)
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }.navigationTitle("Task number:\(todo.id)")
    }
}

#Preview {
    ItemToDoView(todo: Todo(id: 1, title: "Task Number 1", description:  "Example Description", date: .now))
}

