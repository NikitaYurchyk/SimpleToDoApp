import SwiftUI

struct NewItemToDoView: View {
    @State var taskName: String = ""
    @State var description: String = ""
    let onSave: (String, String) -> Void
    var body: some View {
        ScrollView{
            VStack(){
                TextField("Enter your new task", text: $taskName)
                TextField("Enter the description of task", text: $description, axis: .vertical)
                
                Button("Save"){
                    onSave(taskName, description)
                }.buttonStyle(.borderedProminent)
            }
            .padding(20)
            .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    NewItemToDoView(onSave: {_, _ in })
}
