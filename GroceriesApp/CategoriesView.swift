import SwiftUI

struct CategoriesView: View {
    @State private var searchText = ""
    
    private var viewModel = CategoriesViewModel()
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: colums, spacing: 20) {
                    ForEach(viewModel.categoryList, id: \.self.id) { item in
                        CategoryCard(model: item)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Find products")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .scrollIndicators(ScrollIndicatorVisibility.never)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search store")
            
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
