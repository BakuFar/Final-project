import Foundation

class Companies {
    var name: String
    var location: Locations
    init(name: String, location: Locations) {
        self.name = name
        self.location = location
    }
}
let shoro = Companies(name: "Shoro", location: bishkek)
let apple = Companies(name: "Apple", location: washington)
let dongfeng = Companies(name: "Dong Feng", location: beijing)
let vaz = Companies(name: "VAZ", location: moscow)
