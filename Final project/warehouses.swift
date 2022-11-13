import Foundation

class Warehouses {
    var location: String
    var productArray: [Products] = []
    func addProductToArray(product: Products) {
            productArray.append(product)
    }
    init(location: String, productArray: [Products]) {
        self.location = location
        self.productArray = productArray
    }
}
let warehouseWashington = Warehouses(location: "Washington", productArray: [])
let warehouseBishkek = Warehouses(location: "Bishkek", productArray: [])
let warehouseMoscow = Warehouses(location: "Moscow", productArray: [])
let warehouseBeijing = Warehouses(location: "Beijing", productArray: [])
let warehouse = Warehouses(location: "", productArray: [])
