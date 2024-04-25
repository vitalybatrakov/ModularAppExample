import SwiftUI

struct HomeItemView: View {
    var body: some View {
        HStack {
            Image(
                systemName: "takeoutbag.and.cup.and.straw.fill"
            )
            .resizable()
            .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Startducks")
                    .bold()
                Text("Best coffee you can imagine")
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    HomeItemView()
}
