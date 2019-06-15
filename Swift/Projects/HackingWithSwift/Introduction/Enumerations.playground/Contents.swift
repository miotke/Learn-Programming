import UIKit

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
    
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))

enum CarManufacture {
    case volkswagen
    case audi
    case bmw
    case mercedes
}

func getCarBrand(brand: CarManufacture) -> String? {
    switch brand {
    case .volkswagen:
        return nil
    case .audi, .mercedes:
        return "like"
    case .bmw:
        return "dislike"
    }
}

getCarBrand(brand: CarManufacture.audi)

