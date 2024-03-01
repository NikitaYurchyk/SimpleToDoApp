import SwiftUI


struct ToDoListView: View {
    let date: Date
    @State private var isPresented = false
    @State var lstOfTodos: [Todo] = []
    
    init(_ date: Date) {
        self.date = date
        let lstOfTodos = Self.generateDummyToDo(date)
        _lstOfTodos = State(initialValue: lstOfTodos)
    }
    
    private static func generateDummyToDo(_ date: Date) -> [Todo] {
        (1...3)
            .map { number in
                Todo(
                    id: number,
                    title: "Task number \(number)",
                    description: "Important task number \(number), which has to be done by",
                    date: date
                )
            }
    }
    
    private func newToDo(_ name: String, _ description: String){
        let newId = (lstOfTodos.max{$0.id < $1.id }?.id ?? 0) + 1
        let newToDo = Todo(id: newId, title: name, description: description, date: date)
        lstOfTodos.append(newToDo)
    }
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(lstOfTodos) {todo in
                    NavigationLink(value: MainFlowRoute.todoDetail(todo)){
                        Text(todo.title)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Divider()
                }
            }
            .padding(12)
            .bold()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }.navigationTitle("Today")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                        isPresented = true
                    }label: {
                        Image(systemName: "plus.square.fill")
                    }
                }
            }.sheet(isPresented: $isPresented) {
                NewItemToDoView(onSave: {title, description in
                    newToDo(title, description)
                    isPresented = false
                })
            }
        
    }
}


#Preview {
    ToDoListView(Date())
}
