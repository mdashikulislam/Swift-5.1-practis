import UIKit

// inherite method calling

class calculations {
    let a: Int
    let b: Int
    let res: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
        res = a + b
    }
    
    func tot (c: Int) -> Int {
        return res - c
    }
    
    func result () {
        print("Result is: \(tot (c: 20))")
        print("Result is: \(tot (c: 50))")
    }
}
let pri = calculations(a:600, b:300)
pri.result()





