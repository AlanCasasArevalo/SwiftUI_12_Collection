
import SwiftUI
import QGrid
struct ContentView: View {
    
    @State private var search: String = ""
    @State private var height: CGFloat = 0.0

    var body: some View {
        
        VStack {
            SearchBar(text: self.$search)

            QGrid (images.filter {
                self.search.isEmpty ? true : $0.name.lowercased().contains(self.search.lowercased())
            }, columns: 3) { model in
                CollectionCellView(model: model)
            }

        }
        .offset(y: -self.height)
        .animation(.spring())
        .onAppear {
//            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
//                guard let value = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
//                let heightValue = value.height
//                self.height = heightValue
//            }
//
//            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { notification in
//                self.height = 0
//            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
