import SwiftUI

struct HistoryToDoListView: View {

    let dummyDates = (0...9).map{ num in
        Date(timeInterval: Double(-86400 * num), since: Date.now)
    }
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(dummyDates, id: \.self){ date in
                    NavigationLink(value: MainFlowRoute.todoList(date)){
                        Text(date, format: .dateTime)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Divider()
                }
            }.padding(12)
        }.navigationTitle("History")
    }
}

#Preview {
    HistoryToDoListView()
}
