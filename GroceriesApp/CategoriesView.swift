import SwiftUI

struct CategoriesView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                
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
