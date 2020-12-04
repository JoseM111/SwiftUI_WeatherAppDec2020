import SwiftUI

// MARK: - Preview
struct MainView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 320, height: 640))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct MainView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    /// ∆ @State source of truth
    @State var darkMode: Bool = false
    //∆..............................
    
    var body: some View {
        
        //.............................
        ZStack {
            
            ///∆ ........... Background Color Gradient ...........
            BG_GradientComponentView(darkMode: $darkMode)
            
            ///∆ ........... VStack ...........
            VStack {
                
                ///∆ ..... CityTextComponentView .....
                CityTextComponentView(cityName: "Cupertino, CA")
                
                
                ///∆ ... MainWeatherStatusComponentView ...
                MainWeatherStatusComponentView(
                    sf_ImageName: darkMode
                        ? "cloud.moon.rain.fill"
                        : "cloud.sun.fill",
                    intTemp: darkMode ? 57 : 76
                )
                .animation(.easeInOut(duration: 0.75))
                //∆ HANGER 🪝👕🪝 .................
                
                ///∆ ........... Child HStack ...........
                HStack(spacing: 20) {
                    ///∆..................................
                    ForEach((0...4), id: \.self) { day in
                        //∆..........
                        Forecast.weeklyForecast[day]
                    }
                }// ∆ END HStack
                
                //∆..................................
                
                Spacer(minLength: 0) // Spaced Vertically
                
                ///∆ ........... Bottom Button ...........
                Button(action: {
                    //∆..........
                    darkMode.toggle()
                    
                }) {
                    //∆..... LABEL .....
                    VStack {
                        TextDesignComponentView(
                            title: "Change Forecast Day",
                            bgColor: Color.white,
                            fgTextColor: Color.gray.opacity(1.8)
                        )
                    }
                    .shadow(color: Color.black.opacity(0.35),
                            radius: 10, x: 4, y: 8)
                    //∆ HANGER 🪝👕🪝 .................
                }
                
                //∆ HANGER 🪝👕🪝 .................
                
                Spacer(minLength: 0) // Spaced Vertically
                
            }
            
        }///||END__PARENT-ZSTACK||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/
// MARK: Helper Function
func iAmHere(myStr: String) -> some View {
    return Text("\(myStr)")
        .font(.system(size: 22))
        .foregroundColor(.white)
        .bold()
        .background(Color.black)
}
