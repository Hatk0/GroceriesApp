import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(uiImage: Images.Welcome.background)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
