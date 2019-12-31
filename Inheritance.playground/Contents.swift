import UIKit
// Single Inheritance Example

class ParentSingle{
    func parentSingle()-> String{
       return "Parent Single Function"
    }
    
}

class ChildSingle: ParentSingle{
    func childSingleFunction()-> String{
        return "Child Single Function"
    }
}

let childInstant = ChildSingle()
print(childInstant.childSingleFunction())
print(childInstant.parentSingle())

//MultiLevel Inheritance Example
 
class MultiLevelParent{
    func multiLevelparentFunction()-> String{
        return "Multilevel Parent Function"
    }
}

class MultiLevelMiddleChlid: MultiLevelParent {
    func multiLevelMiddleChildFunction()-> String{
        return "multilevel Middle Child Function"
    }
}

class MultiLevelChild: MultiLevelMiddleChlid{
    func multiLevelChildFunction()-> String{
        return "MultiLevel Child Function"
    }
}


let multiLevelInstance = MultiLevelChild()
print(multiLevelInstance.multiLevelparentFunction())
print(multiLevelInstance.multiLevelMiddleChildFunction())
print(multiLevelInstance.multiLevelChildFunction())


//Hierarchical Inheritance Example
class HierarchicalParent{
    func hierarchicalParentFunction() -> String {
        return "Hierarchical Parent Function"
    }
}

class HierarchicalChildOne: HierarchicalParent{
    func hierarchicalChildOneFunction()-> String{
        return "Hierarchical Child One Function"
    }
}

class HierarchicalChildTwo : HierarchicalParent{
    func hierarchicalChildTwoFunction()->String{
        return "Hierarchical Child Two Function"
    }
}
// For Child One
let hierarchicalInstanceChildOne = HierarchicalChildOne()
print(hierarchicalInstanceChildOne.hierarchicalParentFunction())
print(hierarchicalInstanceChildOne.hierarchicalChildOneFunction())
//For Child Two
let hierarchicalInstanceChildTwo = HierarchicalChildTwo()
print(hierarchicalInstanceChildTwo.hierarchicalParentFunction())
print(hierarchicalInstanceChildTwo.hierarchicalChildTwoFunction())

//Multiple Inheritance Example
//Multiple Inheritance Directly is not possible in swift

protocol MultipleParentOne{
    func multipleParentOneFunction()-> String
}

protocol MultipleParentTwo {
    func multipleParentTwoFunction()-> String
}

class MultipleChild: MultipleParentOne,MultipleParentTwo{
    func multipleParentTwoFunction() -> String {
        return "Multiple parent Two Function"
    }
    
    func multipleParentOneFunction() -> String {
        return "Multiple Parent One Function"
    }
    
    func multipleChildFunction()->String{
        return "Multiple Child Function"
    }
    
}

let multipleChildInstance = MultipleChild()
print(multipleChildInstance.multipleParentOneFunction())
print(multipleChildInstance.multipleParentTwoFunction())
print(multipleChildInstance.multipleChildFunction())


//Hybride Inheritance Example

protocol HybrideParent{
    func hybrideParentFunction()->String
}

protocol HybrideMiddleChildOne: HybrideParent{
    func hybrideMiddleChildOneFunction()-> String
}

protocol HybrideMiddleChildTwo: HybrideParent{
    func hybrideMiddleChildTwoFunction()-> String
}

class HybrideChild: HybrideMiddleChildOne,HybrideMiddleChildTwo{
    func hybrideParentFunction() -> String {
        return "Hybride Parent Function"
    }
    
    func hybrideMiddleChildOneFunction() -> String {
        return "Hybride Child One Function"
    }
    
    func hybrideMiddleChildTwoFunction() -> String {
        return "Hybride Child Two Function"
    }
    
    func hybrideChildFunction()->String{
        return "Hybride Child Function"
    }
}


let hybrideChildInstance = HybrideChild()
print(hybrideChildInstance.hybrideParentFunction())
print(hybrideChildInstance.hybrideMiddleChildOneFunction())
print(hybrideChildInstance.hybrideMiddleChildTwoFunction())
print(hybrideChildInstance.hybrideChildFunction())
