import UIKit
//Variable Decliration and print
let age = 30
let name = "Karim"
let ss = name + "Is" + String(age)
print(ss)
let js = name + " is \(age) years old"
print(js)

//Empty String Check

let check = ""
if check.isEmpty{
    print("Empty Value")
}else{
    print("Value is \(check)")
}

//Compare String
let value1 = "Ashik"
let value2 = "Ashik"
if value1 == value2 {
    print("String is Equal")
}else{
    print("String is not Equal")
}

//Array and Empty Array

var someArray = [Int]()
someArray.append(5)
someArray.append(10)
print(someArray)
//Remove Array
someArray.remove(at: 1) // remove Value Position
print(someArray)
