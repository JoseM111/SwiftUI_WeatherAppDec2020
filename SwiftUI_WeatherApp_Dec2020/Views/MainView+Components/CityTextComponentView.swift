import SwiftUI

struct CityTextComponentView: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    var cityName: String
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
            .shadow(color: Color.black.opacity(0.65),
                    radius: 5, x: 2, y: 4)
    }
}

