//request https://api.nasa.gov/insight_weather/?feedtype=json&api_key=DEMO_KEY

struct Sols: Codable {
    let sol_keys: [String]
}
// MARK: - Weather
struct Weather: Codable {
    //let the479: Weather479
    let one, two, three, four, five, six, seven: Weather
    let solKeys: [String]
    
    struct CodingKeys: CodingKey {
        case one = "489"
        case two = "490"
        case three = "491"
        case four = "492"
        case five = "493"
        case six = "494"
        case seven = "495"
    }
}

// MARK: - Weather
struct Weather: Codable {
    let firstUTC: String
    let lastUTC: String
    let season: String
    
    enum CodingKeys: String, CodingKey {
        case firstUTC = "First_UTC"
        case lastUTC = "Last_UTC"
        case season = "Season"
    }
}

struct SolsModel {
    static var solKeys: [String] = [
                                    "489",
                                    "490",
                                    "491",
                                    "492",
                                    "493",
                                    "494",
                                    "495",
                                    ]
}
