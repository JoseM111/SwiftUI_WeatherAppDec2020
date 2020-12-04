import SwiftUI

struct WeatherDayComponentView: View {
    
    // MARK: - ©Global-PROPERTIES
    //∆..............................
    var dayOfTheWeek: String
    var sfSymbolName: String
    var intTemp: Int
    //∆..............................
    
    var body: some View {
        VStack {
            
            //∆ .. Small Weather info Components ..
            Text(dayOfTheWeek)
                .font(
                    .system(size: 16,
                            weight: .medium,
                            design: .default)
                )
                .foregroundColor(.white)
            //∆..........
            Image(systemName: sfSymbolName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            //∆..........
            //∆ ...... Degree° symbol CMD(Option-Shift-8) .....
            Text("\(intTemp)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
        }// ∆ END VStack
        .shadow(color: Color.black.opacity(0.75),
                radius: 10, x: 2, y: 4)
    }
}

