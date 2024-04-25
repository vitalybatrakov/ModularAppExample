import SwiftUI

struct HomeView: View {
    @State private var vm = HomeViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack(
                alignment: .leading,
                pinnedViews: .sectionHeaders
            ) {
                Section {
                    ForEach(vm.items) { item in
                        HomeItemView(item: item)
                            .onTapGesture {
                                // open by id
                            }
                    }
                } header: {
                    Text("Restaurants")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(.white))
                }
            }
        }
        .clipped()
    }
}

#Preview {
    HomeView()
}
