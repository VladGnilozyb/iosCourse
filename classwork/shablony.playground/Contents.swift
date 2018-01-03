struct Rect {
    var x: Double
    var y: Double
    var width: Double
    var height: Double
}
let r1 = Rect(x: 1, y: 2, width: 3, height: 4)

print(r1.height)

let xKey = \Rect.x

r1[keyPath: xKey]
