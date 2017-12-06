//: Playground - noun: a place where people can play

import UIKit

class Person {
    private var creditCard: CreditCard
    init(creditCard: CreditCard) {
        self.creditCard = creditCard
    }
    func removeCreditCard () {
        creditCard = nil
    }
}
class CreditCard {
    let number = "4242 4242 4242 4242"
    
    deinit {
        print("credit card removed")
    }
}


var credit = CreditCard ()
var me = Person(creditCard: credit)

