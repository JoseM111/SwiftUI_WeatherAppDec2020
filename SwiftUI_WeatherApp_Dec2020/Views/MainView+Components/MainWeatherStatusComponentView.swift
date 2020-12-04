import SwiftUI

struct MainWeatherStatusComponentView: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    var sf_ImageName: String
    var intTemp: Int
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        VStack(spacing: 8) {
            
            //∆ ........... SFSymbol Image ...........
            Image(systemName: sf_ImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            //∆ ...... Degree° symbol CMD(Option-Shift-8) .....
            Text("\(intTemp)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }// ∆ END Child VStack
        .padding(.bottom, 60)
        .shadow(color: Color.black.opacity(0.75),
                radius: 10, x: 2, y: 4)
    }
}

