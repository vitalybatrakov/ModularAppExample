import SwiftUI

struct HomeItemView: View {
    @State var item: HomeItem
    
    var body: some View {
        HStack {
            Image(
                systemName: item.image
            )
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(item.title)
                    .bold()
                Text(item.description)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    HomeItemView(
        item: .init(
            image: "mug",
            title: "Starducks",
            description: "Krya-krya"
        )
    )
}
