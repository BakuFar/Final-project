import Foundation

class Buyers {
    var location: String
    init(location: String) {
        self.location = location
    }
}
let buyerFromBishkek = Buyers(location: "Bishkek")
let buyerFromBeijing = Buyers(location: "Beijing")
let buyerFromMoscow = Buyers(location: "Moscow")
let buyerFromWashington = Buyers(location: "Washington")
func buy(buyer: Buyers) {
    if buyer.location == bishkek.location  {
        var found = false
        print("Введите название товара")
        let name: String = readLine() ?? ""
        for i in warehouseBishkek.productArray {
            if i.name == name {
                found = true
                print("Доступное количество на складе в Бишкеке - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                let quantity: Int = Int(readLine()!) ?? 0
                i.quantity -= quantity
                print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка бесплатная\nИтого - \((quantity * i.price)) сом")
            }
        }
        if found == false {
            for i in warehouseMoscow.productArray {
                if i.name == name {
                    print("Доступное количество на складе в Москве - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                    found = true
                }
            }
            for i in warehouseBeijing.productArray {
                if i.name == name {
                    print("Доступное количество на складе в Пекине - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                    found = true
                    
                }
            }
            for i in warehouseWashington.productArray {
                if i.name == name {
                    print("Доступное количество на складе в Вашингтоне - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                    found = true
                    
                }
            }
            var cityFound = false
            while cityFound == false {
                print("Выберите город")
                let city = readLine()
                if city == moscow.location {
                    cityFound = true
                    for i in warehouseMoscow.productArray {
                        if i.name == name {
                            print("Доступное количество на складе в Москве - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                            let quantity: Int = Int(readLine()!) ?? 0
                            i.quantity -= quantity
                            var deliveryFound = false
                            while deliveryFound == false {
                                print("Введите службу доставку DHL и Fedex")
                                let delivery = readLine()
                                if delivery == dhl.name {
                                    deliveryFound = true
                                    i.quantity -= quantity
                                    print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * BishkekMoscow.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * BishkekMoscow.distance / 1000) сом")
                                }
                                if delivery == fedex.name {
                                    print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * BishkekMoscow.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * BishkekMoscow.distance / 1000) сом")
                                    deliveryFound = true
                                    i.quantity -= quantity
                                }
                            }
                        }
                    }
                }
                if city == beijing.location {
                    cityFound = true
                    for i in warehouseBeijing.productArray {
                        if i.name == name {
                            print("Доступное количество на складе в Пекине - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                            let quantity: Int = Int(readLine()!) ?? 0
                            i.quantity -= quantity
                            var deliveryFound = false
                            while deliveryFound == false {
                                print("Введите службу доставку DHL и Fedex")
                                let delivery = readLine()
                                if delivery == dhl.name {
                                    deliveryFound = true
                                    i.quantity -= quantity
                                    print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * BeijingBishkek.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * BeijingBishkek.distance / 1000) сом")
                                }
                                if delivery == fedex.name {
                                    print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * BeijingBishkek.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * BeijingBishkek.distance / 1000) сом")
                                    deliveryFound = true
                                    i.quantity -= quantity
                                }
                            }
                        }
                    }
                }
                if city == washington.location {
                    cityFound = true
                    for i in warehouseWashington.productArray {
                        if i.name == name {
                            print("Доступное количество на складе в Вашингтоне - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                            let quantity: Int = Int(readLine()!) ?? 0
                            i.quantity -= quantity
                            var deliveryFound = false
                            while deliveryFound == false {
                                print("Введите службу доставку DHL и Fedex")
                                let delivery = readLine()
                                if delivery == dhl.name {
                                    deliveryFound = true
                                    i.quantity -= quantity
                                    print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * WashingtonBishkek.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * WashingtonBishkek.distance / 1000) сом")
                                }
                                if delivery == fedex.name {
                                    print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * WashingtonBishkek.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * WashingtonBishkek.distance / 1000) сом")
                                    deliveryFound = true
                                    i.quantity -= quantity
                                }
                            }
                        }
                    }
                }
            }
        }
        if found == false {
            print("Товар не найден")
        }
    }
    if buyer.location == moscow.location  {
        var found = false
        print("Введите название товара")
        let name: String = readLine() ?? ""
        for i in warehouseMoscow.productArray {
            if i.name == name {
                print("Доступное количество на складе в Москве - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                found = true
                let quantity: Int = Int(readLine()!) ?? 0
                i.quantity -= quantity
                print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка бесплатная\nИтого - \((quantity * i.price)) сом")
            }
        }
        if found == false {
            for i in warehouseWashington.productArray {
                if i.name == name {
                    print("Доступное количество на складе в Вашингтоне - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                    found = true
                }
            }
            for i in warehouseBeijing.productArray {
                if i.name == name {
                    print("Доступное количество на складе в Пекине - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                    found = true
                    
                }
            }
            if found == true {
                var cityFound = false
                while cityFound == false {
                    print("Выберите город")
                    let city = readLine()
                    if city == beijing.location {
                        cityFound = true
                        for i in warehouseBeijing.productArray {
                            if i.name == name {
                                print("Доступное количество на складе в Пекине - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                                let quantity: Int = Int(readLine()!) ?? 0
                                i.quantity -= quantity
                                var deliveryFound = false
                                while deliveryFound == false {
                                    print("Введите службу доставку DHL и Fedex")
                                    let delivery = readLine()
                                    if delivery == dhl.name {
                                        deliveryFound = true
                                        i.quantity -= quantity
                                        print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * BeijingMoscow.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * BeijingMoscow.distance / 1000) сом")
                                    }
                                    if delivery == fedex.name {
                                        print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * BeijingMoscow.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * BeijingMoscow.distance / 1000) сом")
                                        deliveryFound = true
                                        i.quantity -= quantity
                                    }
                                }
                            }
                        }
                    }
                    if city == washington.location {
                        cityFound = true
                        for i in warehouseWashington.productArray {
                            if i.name == name {
                                print("Доступное количество на складе в Вашингтоне - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                                let quantity: Int = Int(readLine()!) ?? 0
                                i.quantity -= quantity
                                var deliveryFound = false
                                while deliveryFound == false {
                                    print("Введите службу доставку DHL и Fedex")
                                    let delivery = readLine()
                                    if delivery == dhl.name {
                                        deliveryFound = true
                                        i.quantity -= quantity
                                        print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * WashingtonMoscow.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * WashingtonMoscow.distance / 1000) сом")
                                    }
                                    if delivery == fedex.name {
                                        print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * WashingtonMoscow.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * WashingtonMoscow.distance / 1000) сом")
                                        deliveryFound = true
                                        i.quantity -= quantity
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if found == false {
            print("Товар не найден")
        }
    }
    if buyer.location == beijing.location  {
        var found = false
        print("Введите название товара")
        let name: String = readLine() ?? ""
        for i in warehouseBeijing.productArray {
            if i.name == name {
                print("Доступное количество на складе в Пекине - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                found = true
                let quantity: Int = Int(readLine()!) ?? 0
                i.quantity -= quantity
                print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка бесплатная\nИтого - \((quantity * i.price)) сом")
            }
        }
        if found == false {
            for i in warehouseWashington.productArray {
                if i.name == name {
                    print("Доступное количество на складе в Вашингтоне - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                    found = true
                }
            }
            for i in warehouseMoscow.productArray {
                if i.name == name {
                    print("Доступное количество на складе в Москве - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                    found = true
                }
            }
            if found == true {
                var cityFound = false
                while cityFound == false {
                    print("Выберите город")
                    let city = readLine()
                    if city == moscow.location {
                        cityFound = true
                        for i in warehouseMoscow.productArray {
                            if i.name == name {
                                print("Доступное количество на складе в Москве - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                                let quantity: Int = Int(readLine()!) ?? 0
                                i.quantity -= quantity
                                var deliveryFound = false
                                while deliveryFound == false {
                                    print("Введите службу доставку DHL и Fedex")
                                    let delivery = readLine()
                                    if delivery == dhl.name {
                                        deliveryFound = true
                                        i.quantity -= quantity
                                        print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * BeijingMoscow.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * BeijingMoscow.distance / 1000) сом")
                                    }
                                    if delivery == fedex.name {
                                        print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * BeijingMoscow.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * BeijingMoscow.distance / 1000) сом")
                                        deliveryFound = true
                                        i.quantity -= quantity
                                    }
                                }
                            }
                        }
                    }
                    if city == washington.location {
                        cityFound = true
                        for i in warehouseWashington.productArray {
                            if i.name == name {
                                print("Доступное количество на складе в Вашингтоне - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                                let quantity: Int = Int(readLine()!) ?? 0
                                i.quantity -= quantity
                                var deliveryFound = false
                                while deliveryFound == false {
                                    print("Введите службу доставку DHL и Fedex")
                                    let delivery = readLine()
                                    if delivery == dhl.name {
                                        deliveryFound = true
                                        i.quantity -= quantity
                                        print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * BeijingWashington.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * BeijingWashington.distance / 1000) сом")
                                    }
                                    if delivery == fedex.name {
                                        print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * BeijingWashington.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * BeijingWashington.distance / 1000) сом")
                                        deliveryFound = true
                                        i.quantity -= quantity
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if found == false {
            print("Товар не найден")
        }
    }
        if buyer.location == washington.location  {
            var found = false
            print("Введите название товара")
            let name: String = readLine() ?? ""
            for i in warehouseWashington.productArray {
                if i.name == name {
                    print("Доступное количество на складе в Вашингтоне - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                    found = true
                    let quantity: Int = Int(readLine()!) ?? 0
                    i.quantity -= quantity
                    print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка бесплатная\nИтого - \((quantity * i.price)) сом")
                }
            }
            if found == false {
                for i in warehouseBeijing.productArray {
                    if i.name == name {
                        print("Доступное количество на складе в Пекине - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                        found = true
                    }
                }
                for i in warehouseMoscow.productArray {
                    if i.name == name {
                        print("Доступное количество на складе в Москве - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом")
                        found = true
                        
                    }
                }
                if found == true {
                    var cityFound = false
                    while cityFound == false {
                        print("Выберите город")
                        let city = readLine()
                        if city == moscow.location {
                            cityFound = true
                            for i in warehouseMoscow.productArray {
                                if i.name == name {
                                    print("Доступное количество на складе в Москве - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                                    let quantity: Int = Int(readLine()!) ?? 0
                                    i.quantity -= quantity
                                    var deliveryFound = false
                                    while deliveryFound == false {
                                        print("Введите службу доставку DHL и Fedex")
                                        let delivery = readLine()
                                        if delivery == dhl.name {
                                            deliveryFound = true
                                            i.quantity -= quantity
                                            print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * WashingtonMoscow.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * WashingtonMoscow.distance / 1000) сом")
                                        }
                                        if delivery == fedex.name {
                                            print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * WashingtonMoscow.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * WashingtonMoscow.distance / 1000) сом")
                                            deliveryFound = true
                                            i.quantity -= quantity
                                        }
                                    }
                                }
                            }
                        }
                        if city == beijing.location {
                            cityFound = true
                            for i in warehouseBeijing.productArray {
                                if i.name == name {
                                    print("Доступное количество на складе в Пекине - \(i.quantity) шт.\nЦена за единицу - \(i.price) сом\nВведите количество")
                                    let quantity: Int = Int(readLine()!) ?? 0
                                    i.quantity -= quantity
                                    var deliveryFound = false
                                    while deliveryFound == false {
                                        print("Введите службу доставку DHL и Fedex")
                                        let delivery = readLine()
                                        if delivery == dhl.name {
                                            deliveryFound = true
                                            i.quantity -= quantity
                                            print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \(quantity * i.weight * dhl.tariff * BeijingWashington.distance / 1000) сом\nИтого - \(quantity * i.price + quantity * i.weight * dhl.tariff * BeijingWashington.distance / 1000) сом")
                                        }
                                        if delivery == fedex.name {
                                            print("Ваш заказ\n\(i.name) - \(quantity) шт. цена - \(i.price) сом. сумма - \(quantity * i.price)\nДоставка - \((i.quantity * i.weight * fedex.tariff * BeijingWashington.distance) / 1000) сом\nИтого - \(quantity * i.price + i.quantity * i.weight * fedex.tariff * BeijingWashington.distance / 1000) сом")
                                            deliveryFound = true
                                            i.quantity -= quantity
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                
            }
            if found == false {
                print("Товар не найден")
            }
        }
}
