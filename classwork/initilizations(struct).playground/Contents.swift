struct Rect {
    let x: Double
    let y: Double
    let width: Double
    let height: Double
    
    init(centerX: Double, centreY: Double, width: Double, height: Double) {
        self.width = width
        self.height = height
        self.x = centerX - width/2
        self.y = centreY - height/2
    }
    init(_ x: Double, _ y: Double, _ width: Double, _ height: Double) {
        self.width = width
        self.height = height
        self.x = x
        self.y = y
    }
    
    init?(points: [Double]) {
        if points.count != 4 {  return nil     }
        x = points[0]
        y = points [1]
        width = points[2]
        height = points[3]
    }
    init(x: Double, y: Double) {
        self.init(x, y, 1, 1)
        
    }
}
let r1 = Rect(0, 0, 1, 1)

let r2 = Rect(points: [1, 2, 3 ,4])




