import SwiftUI

struct WelcomeView: View {
    @State private var presentCategories = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image(uiImage: Images.Welcome.background)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Image(uiImage: Images.Welcome.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text("Welcome to our store")
                        .font(.system(size: 48, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.bottom, 8)
                    Text("Get your groceries in as fast as one hour")
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                        .foregroundColor(Color.description)
                        .padding(.bottom, 40)
                    Button {
                        presentCategories.toggle()
                    } label: {
                        Text("Get Started")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(Color.groceriesGreen)
                    .cornerRadius(12)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 90)
                }
            }.navigationDestination(isPresented: $presentCategories) {
                CategoriesView()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
