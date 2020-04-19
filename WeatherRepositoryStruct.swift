//request https://api.nasa.gov/insight_weather/?feedtype=json&api_key=DEMO_KEY

struct Sols: Codable {
    let sol_keys: [String]
}
// MARK: - Weather
struct Weather: Codable {
    //let the479: Weather479
    let one, two, three, four, five, six, seven: Weather
    let solKeys: [String]
    
    func encode(to encoder: Encoder) throws {}
    struct CodingKeys: CodingKey {
        let name: String
        
        var stringValue: String {
            return self.name
        }
        
        init?(stringValue: String) {
            self.name = stringValue
        }
        
        var intValue: Int? {
            return nil
        }
        
        init?(intValue: Int) {
            return nil
        }
        static let solKeys  = CodingKeys(stringValue: "sol_keys")
        static let dayOne   = CodingKeys(stringValue: SolsModel.solKeys[6])
        static let dayTwo   = CodingKeys(stringValue: SolsModel.solKeys[5])
        static let dayThree = CodingKeys(stringValue: SolsModel.solKeys[4])
        static let dayFour  = CodingKeys(stringValue: SolsModel.solKeys[3])
        static let dayFive  = CodingKeys(stringValue: SolsModel.solKeys[2])
        static let daySix   = CodingKeys(stringValue: SolsModel.solKeys[1])
        static let daySeven = CodingKeys(stringValue: SolsModel.solKeys[0])
        
        
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.solKeys  = try container.decode([String].self, forKey: Weather.CodingKeys.solKeys!)
        self.one   = try container.decode(Weather.self, forKey: Weather.CodingKeys.dayOne!)
        self.two   = try container.decode(Weather.self, forKey: Weather.CodingKeys.dayTwo!)
        self.three = try container.decode(Weather.self, forKey: Weather.CodingKeys.dayThree!)
        self.four  = try container.decode(Weather.self, forKey: Weather.CodingKeys.dayFour!)
        self.five  = try container.decode(Weather.self, forKey: Weather.CodingKeys.dayFive!)
        self.six   = try container.decode(Weather.self, forKey: Weather.CodingKeys.daySix!)
        self.seven = try container.decode(Weather.self, forKey: Weather.CodingKeys.daySeven!)
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
