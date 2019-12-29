import UIKit

//Character Check in switch case

let charas: Character = "d"
func myFunction(values: Character, type: String){
    print("\(values) is \(type)")
}

switch charas{
case "a":
    myFunction(values: "a", type: "alphabet")
case "z":
    myFunction(values: "z", type: "constant")
default:
    print("Error")
}

//Function

func numberCount(x: Int, y: Int)-> Int{
    let z  = (x + y)
    return z
}

let pt = numberCount(x: 10, y: 6)
print(pt)

func withOutParameter(){
   print("Without parameter Function loaded")
}
withOutParameter()


//Function With multiple Return type
func maxMin(array: [Int]) -> (min: Int, max: Int){
    
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let val = maxMin(array: [50,2,5,6,8,10,2])
print(val)

//Function with optional Return
func optionalReturn(array: [Int])-> (max: Int, min: Int)? {
    if array.isEmpty {
        return nil
    }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for values in array[1..<array.count]{
        if values < currentMin {
            currentMin = values
        }else if values > currentMax{
            currentMax = values
        }
        
    }
    
    return (currentMax, currentMin)
}

let vuss = optionalReturn(array: [5,10,15,20,65,45,30])
print(vuss!)

//String Sorted
let name = ["Ashik","rahim","karim","jamal","Kamal","Ali"]

func backword(_s1: String, _s2: String) -> Bool{
    return _s1 < _s2
}

var reverName = name.sorted(by: backword)
print(reverName)
