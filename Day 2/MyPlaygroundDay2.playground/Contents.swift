import UIKit
//Arithmetic Operator
var number1 : Int
var number2 : Int

number1 = 45
number2 = 20

//Addition

let result = number1 + number2
print("Result is \(result)")

//Subtract
let subTract = number1 - number2
print("Result is \(subTract)")

//Multiply

let multiply = number1 * number2
print("Result is \(multiply)")

//Divided
let divided = number1 / number2
print("Result is \(divided)")

//Modules
let modulas = number1 % number2
print("Result is \(modulas)")

//Unary minus and Plus
//For Minus
let four = 4
let minusFour = -four
let plusFour = -minusFour
print(minusFour)
print(plusFour)
//For plus
let three = -3
let plusThree = +three

print(plusThree)

var m = 1
m -= 1
print(m)

//Comparision

if 1 < 2 {
    print("1 is Less than 2")
}else{
    print("1 is greater than 2")
}


if (2, "Apple") == (2, "Apple") {
    print("True")
}else{
    print("False")
}

//For Loop

for index in 1...10{
    print("index Number is \(index)")
}

for index in 1..<9{
    print("index Number is \(index)")
}

//Count Array Index

let names = ["Ashik", "rahim","Karim","jamal","kamal"]
let countIndex = names.count
print(countIndex)

for i in 0..<countIndex{
    print("Array is \(names[i])")
}
// unknown strating position count
for name in names[...3]{
    print(name)
}

//Logical opreator

let boolTrue = false

if boolTrue == true
{
    print("Return True")
}else{
    print("Return False")
}


let userName = true
let pass = false
let userId = true

if !userName {
    print("False")
}else{
    print("true")
}


if userName && (pass || userId) { //if condition execute if value is true
    print("welcome")
}else{
    print("You have no access")
}

//Emoj

let emoj = "\u{1F496}"
print(emoj)
