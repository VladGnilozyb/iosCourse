//: Playground - noun: a place where people can play

import UIKit

func arifmProgression(_ Number: Int) -> Int {
    return  arifmProgression(startNumber: 0, finishNumber: Number)
}

func nullablearifmProgression(startNumber: Int, finishNumber: Int) -> Int? {
    guard finishNumber >= startNumber else{
        return nil
    }
    var sum = 0
    for i in startNumber...finishNumber {
        sum += i
    }
    return sum
}

func arifmProgression(startNumber: Int, finishNumber: Int) -> Int {
    if let sum = nullablearifmProgression(startNumber: startNumber, finishNumber: finishNumber) {
        return sum
    }
    return 0
}


//func arifmProgression(_ Number: Int) -> Int {
//    return  arifmProgression(startNumber: 0, finishNumber: Number)
//}


func maxMin ( array: [Int]) -> (Int, Int)? {
    if let max = array.max(), let min = array.min() {
        return (min,max)
    }
    return nil
}

var sum: Int = 0

func progression (maxValue: Int, sum: inout Int) {
    sum = arifmProgression(maxValue)
}

progression(maxValue: 10, sum: &sum)


