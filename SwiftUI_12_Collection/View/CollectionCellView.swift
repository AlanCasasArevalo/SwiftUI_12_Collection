
import SwiftUI

struct CollectionCellView: View {
    
    var model: Model
    
    var body: some View {
        VStack{
            VStack{
                Image(systemName: model.image)
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(Color(.white))
                Text(model.name)
                    .foregroundColor(Color(.white))
                    .font(.system(.title, design: .rounded))
                
            }
            .frame(width: 110, height: 110, alignment: .center)
            .background(Color(.darkGray))
            .clipShape(Circle())
        }
    }
}

struct CollectionCellView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCellView(model: Model(image: "star", name:"Juan"))
    }
}
