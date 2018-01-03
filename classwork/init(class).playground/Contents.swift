class Figure {
    var center: (Double, Double)
    
    init(center: (Double, Double)) {
        self.center = center
    }
    
    init(x: Double, y: Double) {
        center = (x, y)
    }
    
    init?(arrayCentre: [Double]) {
        if arrayCentre.count != 2 {return nil}
        center = (arrayCentre[0], arrayCentre[1])
    }
    
    convenience init(value: Double) {
        self.init(x: value, y: value)
    }
}

class Rect: Figure {
    var width: Double
    var height: Double
    var square: Double?
    
    init (x: Double, y: Double, width: Double, height: Double) {
        self.height = height
        self.width = width
        super.init(x: x, y: y)
        square = self.width * self.height
        
    }
    
    convenience init(x: Double, y: Double, side: Double) {
        self.init(x: x, y: y, width: side, height: side)
    }
}
let rectangle = Rect(x: 1.2, y: 1.3, width: 12, height: 12)
