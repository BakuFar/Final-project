import Foundation

class Products {
    var code: Int
    var name: String
    var price: Int
    var weight: Int
    var quantity: Int
    var company: Companies
    init(code: Int, name: String, price: Int, weight: Int, quantity: Int, company: Companies) {
        self.code = code
        self.name = name
        self.price = price
        self.weight = weight
        self.quantity = quantity
        self.company = company
    }
}

