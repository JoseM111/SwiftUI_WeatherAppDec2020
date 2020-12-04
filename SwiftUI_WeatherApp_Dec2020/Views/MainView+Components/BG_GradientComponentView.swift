import SwiftUI

struct BG_GradientComponentView: View {
    // MARK: - ©Global-PROPERTIES
    //∆..............................
    ///∆ ...........
    ///  • Creates a two-way-binding with @Binding in this
    ///    view & a @State in the view implementing the bind.
    ///  ............
    @Binding var darkMode: Bool
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        
        LinearGradient(
            gradient: Gradient(colors: [
                darkMode ? .black : .blue,/// Must use `$` in the child-view
                darkMode ? .gray : .lightBlue2/// Must use `$` in the child-view
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
        
    }
}

