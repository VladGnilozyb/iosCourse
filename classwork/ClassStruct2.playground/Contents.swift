struct Point {
    var oX: Double
    var oY: Double
    
    mutating func translate(x: Double, y: Double) -> Point {
        return Point(oX: oX + x, oY: oY + y)
    }
}

struct Vector {
    var oX: Double
    var oY: Double
    
    func add(x: Double, y: Double) -> Vector {
        return Vector(oX: oX + x, oY: oY + y)
    }
}


struct Line {
    var k: Double
    var x: Double
    var b: Double
    var y: Double { return (k * x + b) }

}

class Statistic {
    var points: [Point]
    var line: Line
    init(points: [Point],  line: Line ) {
        self.points = points
        self.line = line
    }
    func distance() -> Double {
       return
    }
}
