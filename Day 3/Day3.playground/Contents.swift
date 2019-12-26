import UIKit
//integer to String Convert

let age = 30
let name = "Ashik"
let ss = name + " age is " + String(age) //Int to String
print(ss)

print("\(name) age is \(String(age))")

//Reapting Array

var RA = Array(repeating: 3, count: 4)
print(RA)
var RA2 = Array(repeating: 10, count: 4)
var rs = (RA + RA2)
print(rs) // Apprend Reapting Array

//String Type Array
var shopList = ["Milk","Tea","Coffee"] //without declear Datatype
print(shopList)
var typeStringArray : [String] = ["Food","Shirt","Car"]
print(typeStringArray)
typeStringArray.append("Mobile")
print(typeStringArray)

typeStringArray += ["laptop","money"]
print(typeStringArray)
//Array Insert
typeStringArray.insert("Nothing", at: 4)
print(typeStringArray)

//Array in for Loop

for item in typeStringArray{
    print(item)
}

//Array index with value in for loop

for (index,value) in typeStringArray.enumerated(){// index = array index number and value = array value
    print("Item \(index) : \(value)")
}

//Set Concept
let oddnumber : Set = [1,3,5,7,9,11,13]
let evenNumber : Set = [2,4,6,8,10,12,14]
print(oddnumber.union(evenNumber).sorted())//Union
print(oddnumber.intersection(evenNumber).sorted())//intersection

//Dictionary

var dic1 = ["ashik":20,"Rahim":30,"Jamal":40] //Dictionary without DataType
print(dic1)

for dic in dic1{
    print(dic.key) // Dictionary key
    print(dic.value) //Dictionary value
}

var dic2 : [String : String] //Dictionary with Datatype bot not assign value
var dic3 : [String : Int] = ["Ashik" : 20, "kamal" : 30, "jamal": 50] //Dictonary with value
print(dic3)

for value in dic3{
    print("Key is \(value.key) and value is \(value.value)")
}

for (index,value) in dic3.enumerated(){
    print("\(index) Item key is \(value.key) and value is \(value.value)")
}

// Dictionary only key

for key in dic3.keys {
    print("keys is \(key)")
}

//Dictionary only value
for value in dic3.values{
    print("keys is \(value)")
}


//Comparesion with Dictionary value

if let val = dic3["Ashik"]{
    print("My age is \(val)")
}

//Dictonary key,value in loop

for (name,age) in dic3{
    print("\(name) age is \(age)")
}

// without variale in for loop
let base = 3
let power = 10
var ans = 1
for _ in 1...10{
    ans *= base
}
print("\(base) to the power \(power) is \(ans)")


//For loop stried

let minimumInterval = 5
let minitue = 50

for i in stride(from: 0, to: minitue, by: minimumInterval){ // i = (miniute / minimumInterval)
    print(i)
}

for i in stride(from: 3, through: minitue, by: minimumInterval){
    print(i)
}

