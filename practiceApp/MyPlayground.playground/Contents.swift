import UIKit

var str = "Hello, playground"

let rsa = "RSA256"

let components = rsa.components(separatedBy: NSCharacterSet.decimalDigits.inverted)
let list = components.filter { $0 != "" }

print(list.first)
