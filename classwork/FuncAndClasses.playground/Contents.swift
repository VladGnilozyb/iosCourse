enum ClaculationOptions{
    case addition
    case substract
    case multi
}

class Calculator{
    var result: Int?
    var inputValue: Int = 0
    var operation: ClaculationOptions?
    
    
    func nextNumber(_ nextNumber: Int) -> Int{
        switch operation! {
        case .addition :
            result = add(inputValue, nextNumber)
        case .substract :
            result = substract(inputValue, nextNumber)
        case .multi :
            multi (inputValue, nextNumber)
        }
        operation = nil
        inputValue = result!
        return result!
    }
    
    func add (_ firstNumber: Int, _ secondNumber: Int ) -> Int {
        result =  firstNumber + secondNumber
        print(result!)
        return result!
        
    }
    
    func substract (_ firstNumber: Int, _ secondNumber: Int ) -> Int {
        result =  firstNumber - secondNumber
        print(result!)
        return result!
    }
    func multi (_ firstNumber: Int, _ secondNumber: Int) -> Int {
        result = firstNumber * secondNumber
        print(result!)
        return result!
    }
}



var calculation = Calculator()
calculation.inputValue = 1
calculation.operation = .multi
calculation.nextNumber(2)



//func add (_ firstNumber: Int, _ secondNumber: Int ) -> Int{
//    return firstNumber + secondNumber
//}
//
//add(4, 1)
//
//
//func substract (_ firstNumber: Int, _ secondNumber: Int) -> Int {
//
//    return firstNumber - secondNumber
//}
//substract(4, 2)
//
//
//func swap (_ first: inout Int, _ second: inout  Int) ->(Int,Int){
//    return (second,first)
//
//}
//
//
//
//func swap1(_ first1: inout Int, _ second1: inout  Int) -> (Int, Int){
//    let a = first1
//    first1 = second1
//    second1 = a
//    return(first1,a)
//
//}
//
//
//class LocationClass{
//    let longitude: Double
//    var latitude: Double?
//    init(){
//        longitude = 0
//        //latitude = 0
//    }
//}
