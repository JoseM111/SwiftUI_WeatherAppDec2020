import SwiftUI

struct BG_GradientComponentView: View {
    // MARK: - ©Global-PROPERTIES
    //∆..............................
    @Binding var darkMode: Bool
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        
        LinearGradient(
            gradient: Gradient(colors: [
                darkMode ? .black : .blue,
                darkMode ? .gray : .lightBlue2
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
        
    }
}

