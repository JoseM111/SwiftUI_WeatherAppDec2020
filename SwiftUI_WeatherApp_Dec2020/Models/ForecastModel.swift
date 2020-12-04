import SwiftUI

struct Forecast {
    // MARK: - ∆@PROPERTIES
    //∆..............................
    //∆..........
    static let weeklyForecast = [
        //∆..........
        WeatherDayComponentView(
            dayOfTheWeek: "TUE",
            sfSymbolName: "cloud.sun.fill",
            intTemp: 76),
        WeatherDayComponentView(
            dayOfTheWeek: "WED",
            sfSymbolName: "cloud.sun.rain.fill",
            intTemp: 79),
        WeatherDayComponentView(
            dayOfTheWeek: "THURS",
            sfSymbolName: "cloud.bolt.fill",
            intTemp: 66),
        WeatherDayComponentView(
            dayOfTheWeek: "FRI",
            sfSymbolName: "cloud.drizzle.fill",
            intTemp: 59),
        WeatherDayComponentView(
            dayOfTheWeek: "SAT",
            sfSymbolName: "sun.dust.fill",
            intTemp: 61)
        //∆..........
    ]
    //∆..........
}


