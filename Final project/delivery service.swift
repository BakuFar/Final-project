import Foundation

class DeliveryService {
    var name: String
    var tariff: Int
    init(name: String, tariff: Int) {
        self.name = name
        self.tariff = tariff
    }
}
let dhl = DeliveryService(name: "DHL", tariff: 5)
let fedex = DeliveryService(name: "Fedex", tariff: 6)
