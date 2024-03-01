import SwiftUI

struct TextViews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TextFieldWithRoundBorders: View {
    let placeHolder: String
    @Binding var ptrVar: String
    
    init(_ placeHolder: String = "",  _ ptrVar: Binding<String>) {
        self.placeHolder = placeHolder
        self._ptrVar = ptrVar
    }
    
    var body: some View {
        TextField(placeHolder, text: $ptrVar)
            .border(Color.blue)
            .cornerRadius(3.0)
    }
}

#Preview {
    TextViews()
}
