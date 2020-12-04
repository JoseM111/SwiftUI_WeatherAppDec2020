import SwiftUI

struct TextDesignComponentView: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    var title: String
    var bgColor, fgTextColor: Color
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(bgColor)
            .foregroundColor(fgTextColor)
            .shadow(color: Color.black.opacity(0.25),
                    radius: 6, x: 6, y: 5)
            .font(
                .system(size: 20,
                        weight: .bold,
                        design: .monospaced)
            )
            .cornerRadius(12)
    }
}

