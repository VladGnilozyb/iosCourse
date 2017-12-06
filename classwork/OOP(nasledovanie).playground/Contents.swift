
class Venicle {
    var currentSpeed: Double = 0
    func description() -> String {
        return "Venicle current speed is \(currentSpeed)"
    }
}


class Bike: Venicle {
    var  seats: Int
    init(seats: Int) {
        self.seats = seats
    }
    
   override func description() -> String {
        return super.description() + "\nHas \(seats) seats"
    }
}


let myCar = Venicle()
myCar.currentSpeed = 59.9
print (myCar.description())


let myBIke = Bike(seats: 2)
print(myBIke.description())
