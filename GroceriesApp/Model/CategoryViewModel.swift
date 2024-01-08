import SwiftUI

struct CategoryModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let image: UIImage
    let color: Color
    let borderColor: Color
}

struct CategoriesViewModel {
    let categoryList: [CategoryModel] =
    [
        .init(name: "Frash Fruits & Vegetable", image: Images.Category.fruitsVegs, color: Color.Cards.fruitVeg, borderColor: Color.Cards.fruitVeg),
        .init(name: "Beverages", image: Images.Category.beverages, color: Color.Cards.beverage, borderColor: Color.Cards.beverage),
        .init(name: "Bakery and Snacks", image: Images.Category.bakery, color: Color.Cards.bakery, borderColor: Color.Cards.bakery),
        .init(name: "Cooking Oil & Ghee", image: Images.Category.oils, color: Color.Cards.oils, borderColor: Color.Cards.oils),
        .init(name: "Dairy & Eggs", image: Images.Category.dairyEggs, color: Color.Cards.dairyEggs, borderColor: Color.Cards.dairyEggs),
        .init(name: "Meat & Fish", image: Images.Category.meatFish, color: Color.Cards.meatFish, borderColor: Color.Cards.meatFish),
        .init(name: "Cooking Oil & Ghee", image: Images.Category.oils, color: Color.Cards.oils, borderColor: Color.Cards.oils),
        .init(name: "Dairy & Eggs", image: Images.Category.dairyEggs, color: Color.Cards.dairyEggs, borderColor: Color.Cards.dairyEggs),
        .init(name: "Meat & Fish", image: Images.Category.meatFish, color: Color.Cards.meatFish, borderColor: Color.Cards.meatFish),
        .init(name: "Beverages", image: Images.Category.beverages, color: Color.Cards.beverage, borderColor: Color.Cards.beverage)
    ]
}
