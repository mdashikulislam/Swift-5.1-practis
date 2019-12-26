import UIKit

var str = "Bangladesh"
str = "India"
print(str)

let age = 30
let name = "Abdur Rahman"
let ss = name + "is" + String(age)
print(ss)

let a = 10
let b = 20
let c = a+b
print(c)
// Empty String Check
let check = ""
if check.isEmpty {
    print("There is no cvalue")
}else{
    print("There is some value")
}
// Compare String

var v1 = "Test"
var v2 = "Test"
if v1 == v2 {
    print("Both are same")
}else{
    print("Not same")
}

// Array declaration
var arr = [String]()
arr = ["a","b","C"]
print(arr[0])

let arr1:[Int] = [1,2,3,4]
print(arr1)

// Optional

var OptionalNumber:Int?
print (OptionalNumber)

OptionalNumber = 100

print(OptionalNumber)

// If let

if let number = OptionalNumber {
    print("I have the value and it is \(number)")
}else{
    print("I have no any value")
}

// GUARD LET

func dubleNumber(numebr:Int?){
    guard let number = numebr else{
        print("Exit function")
        return
    }
    print("The number is \(number*2)")
}
dubleNumber(numebr: OptionalNumber)

// Force unwraping

let forcevalue = OptionalNumber!
print(forcevalue)

// Optional chaining

struct Device{
    var type: String
    var price : Float
    var color: String
}
var MyPhone : Device?
MyPhone = Device(type: "Iphone", price: 999.9, color: "Space Gray")

var YourPhone : Device?
YourPhone = Device(type: "Android", price: 200, color: "Gray")

let devicePrice = MyPhone?.price
if let PriceVal = devicePrice{
    print("Total price is \(PriceVal*3)")
}

let You = YourPhone?.type
if let TypeVal = You{
    print("Your Phone Type \(TypeVal)")
}
//End Day 1
