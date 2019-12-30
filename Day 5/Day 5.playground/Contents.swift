import UIKit

class myClass{
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

let cls = myClass(name: "Ashik", age: 26)
print(cls.name)
print(cls.age)


class myMacbook{
    var name: String
    var size: Float
    
    init(name: String, size: Float) {
        self.name = name
        self.size = size
    }
}

var macBook = myMacbook(name: "MacBook Air", size: 15.5)
print(macBook.name)
print(macBook.size)
macBook.size = 14.5 //pass By reference
print(macBook.size)
var newMacbook = macBook
newMacbook.name = "macBook Pro" //Pass by Value

print(macBook.name)
    

// Inherit

class Parent{
    func parentMethod(){
        print("This is parent Method")
    }
    
    func getData(){
        print("This is data Function")
    }
}

var parent = Parent()
print(parent.parentMethod())

class Child: Parent{
    
    func myFunction(name: String, age: Int) -> (name: String, age: Int) {
        
        return (name,age)
    }
}

var child = Child()
var ClildCall = child.getData();
print(ClildCall)
var newValue = child.myFunction(name: "ashik", age: 26)
print(newValue)

//Enumeration

enum Direction{
    case Left
    case Right
    case Up
    case Down
}

var directionToGo = Direction.Left

print(directionToGo)
directionToGo = .Up
print(directionToGo)
//Enum in switch case
switch directionToGo {
case .Down:
    print("Go Down")
case .Up:
    print("Go Up")
case .Left:
    print("Go Left")
case .Right:
    print("Go Right")
}

//Closure Extended
let names = ["Dalim","Rahim","karim","Kaisha","nontu","Fontu"]

func forword(_s1:String,_s2:String)-> Bool{
    return _s1<_s2
}
var arrangeName = names.sorted(by: forword)
print(arrangeName)
//Another Way
arrangeName = names.sorted(by: {
    (s1:String, s2: String)-> Bool
    in
    return s1>s2
})
print(arrangeName)
//another Way

arrangeName = names.sorted(by: {
    s1,s2 in s1 < s2
})
print(arrangeName)

//Incrementor
func makeIncrementor(forIncrement amount: Int)-> ()-> Int{
    var runnungTotal = 0
    func incrementor()-> Int{
        runnungTotal += amount
        return runnungTotal
    }
    return incrementor
}
let incrementByFive = makeIncrementor(forIncrement: 5)
print(incrementByFive())
print(incrementByFive())
print(incrementByFive())
