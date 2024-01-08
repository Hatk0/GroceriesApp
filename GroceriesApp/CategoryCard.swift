import SwiftUI

struct CategoryCard: View {
    let model: CategoryModel

    var body: some View {
        VStack {
            Image(uiImage: model.image)
                .resizable()
                .scaledToFit()
                .frame(height: 75)
            
            Text(model.name)
                .font(.system(size: 20, weight: .bold, design: .rounded))
        }
        .frame(width: 170, height: 190)
        .background(model.color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(model.borderColor, lineWidth: 2)
        )
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(model:         .init(name: "Frash Fruits & Vegetable", image: Images.Category.fruitsVegs, color: Color.Cards.fruitVeg, borderColor: Color.Cards.fruitVeg))
    }
}
