struct Circle: Equatable, Comparable {
    
    static func ==(lhs: Circle, rhs: Circle) -> Bool {
        return (lhs.centre == rhs.centre && lhs.radius == rhs.radius)
    }
    
    static func <(lhs: Circle, rhs: Circle) -> Bool {
        return (lhs.centre < rhs.centre && lhs.radius < rhs.radius)
    }
    
    var hashValue: Int {
        return (centre.0.hashValue ^ centre.1.hashValue ^ radius.hashValue)
    }
    
    var centre: (Double, Double)
    var radius: Double
}


