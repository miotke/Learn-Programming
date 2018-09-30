//: Playground - noun: a place where people can play

import UIKit


enum NameOfEnum {
    case caseOne
    case caseTwo
    case caseThree
}

let enumeration: NameOfEnum = .caseTwo


enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("lkjalskjdklsajd")

switch productBarcode {
case let .upc(numberSystem, manufacturer, productCode, check):
        print("UPC: \(numberSystem), \(manufacturer), \(productCode), \(check)")
case let .qrCode(productCode):
        print("QR Code: \(productCode)")
}


enum JediMaster: String {
    case yoda = "Yoda"
    case maceWindu = "Mac Windu"
    case quiGonJinn = "Qui-Gon Jinn"
    case obiWanKenobi = "Obi-wan Kenobi"
    case lukeSkywalker = "Luke Skywalker"
}

print(JediMaster.yoda.rawValue)



enum SwitchStatus {
    case on
    case off
}

var switchStatus: SwitchStatus = .off

func flipSwitch(status: SwitchStatus) -> SwitchStatus {
    if status == .off {
        return .on
    } else {
        return .off
    }
}


flipSwitch(status: switchStatus)

switchStatus = .on
flipSwitch(status: switchStatus)
