
import SwiftUI
import QGrid
struct ContentView: View {
    var body: some View {
        
        VStack {
            QGrid (images, columns: 3) { model in
                CollectionCellView(model: model)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
