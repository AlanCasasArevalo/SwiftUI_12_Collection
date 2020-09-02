
import SwiftUI

struct SearchBar: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.placeholder = "Buscar"
        searchBar.autocapitalizationType = .words
        searchBar.autocorrectionType = .yes
        searchBar.delegate = context.coordinator
        
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: self.$text)
    }
    
    class Coordinator : NSObject, UISearchBarDelegate {
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
        
    }
}
