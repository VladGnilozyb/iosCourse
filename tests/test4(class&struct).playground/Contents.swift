import Foundation

/*:
 *1)*
 - Объявите класс HomeSensor, который содержит несколько свойств: значение измеряемого параметра, название измеряемого параметра, целевое значение параметра (targetValue), точность в процентах, id датчика
 - Напишите функцию, которая выводит описание типа "Температура на датчике 13 равна 15 градусов по цельсию +/- 1 градус. Целевое значение -- 19 градусов"
 - В классе HomeSensor сделайте все свойства, кроме targetValue доступными только на чтение
 */

class HomeSensor {
    var targetValue: Int
    let valueMeasuare: Int
    var nameMeasure: String
    let accuracy: Double
    let id: Int
    
    func printDesription(){
        print("Температура датчика\(id) равна \(valueMeasuare)  \(nameMeasure) +/- \(accuracy). Целевое значение -- \(targetValue) градусов")
    }
    init(targetValue: Int, valueMeasuare: Int, nameMeasure: String, accuracy: Double, id: Int) {
        self.targetValue = targetValue
        self.valueMeasuare = valueMeasuare
        self.nameMeasure = nameMeasure
        self.accuracy = accuracy
        self.id = id
    }
}
let someSensorValue = HomeSensor(targetValue: 19, valueMeasuare: 15, nameMeasure: "градусов по цельсию", accuracy: 1, id: 13)
someSensorValue.printDesription()
/*:
 
 *2)*
 - Объявите объект Room, который содержит несколько HomeSensor как свойство c названием sensors и название комнаты
 - Объявите объект Home, который содержит несколько Room как свойство c названием rooms
 
 - Создайте 1 объект home: Home
 - Создайте 3 объекта Room (кухня, гостинная, спальня)
 - Добавьте комнаты в home.rooms
 - Создайте один датчик, который будет измерять температуру в цельсиях и добавьте его в каждую из комнат
 */
class Room {
    var sensors: [HomeSensor]
    var nameRoom: String
    init(sensors: [HomeSensor], nameRoom: String) {
        self.sensors = sensors
        self.nameRoom = nameRoom
    }
}

class Home {
    var rooms: [Room]
    init(rooms: [Room]) {
        self.rooms = rooms
    }
    func printDatch() {
        for room in rooms {
            for _ in room.sensors {
            HomeSensor.printDesription
            }
        }
    }
}

let someSensor1 = HomeSensor(targetValue: 12, valueMeasuare: 12, nameMeasure: "name", accuracy: 1, id: 1)
let someSensor2 = HomeSensor(targetValue: 21, valueMeasuare: 11, nameMeasure: "eman", accuracy: 2, id: 2)
let kitchen = Room(sensors: [someSensorValue], nameRoom: "kitchen")
let livingRoom = Room(sensors: [someSensor1], nameRoom: "living room")
let sleepingRoom = Room(sensors: [someSensor2], nameRoom: "sleeping room")

let home = Home(rooms: [kitchen, livingRoom, sleepingRoom])
/*:
 
 *3)*
 - добавьте в home функцию, которая выводит в консоль показания датчиков в каждой комнате, используя функцию из задания 1
 - установите targetValue для датчика в кухне на 18, а в спальне на 21
 - вызовите функцию, которую объявили шагом выше.
 - если вывод функции не соотвествует логичному -- исправьте поведение данного кода
 */
home.printDatch()
/*:
 *4)*
 
 - Создайте наследников класса Sensor -- TemperatureSensor и HumiditySensor
 - Сделайте так, чтобы название измеряемого параметра устанавливалось в инициализаторе этих классов и бралось из статической константы
 - Добавьте обработку валидности установленного targetValue. От 0 до 100 для влажности и от -30 до +50 для температуры
 */
class TemperatureSensor: HomeSensor {
    static let measureName = "градус(ов)"
    override var targetValue: Int {
        didSet {
            if targetValue <= -30 && targetValue >= 50 {
                print("Недопустимое значение температуры")
                targetValue = 0
            }
        }
    }
    init(measureName: String, targetValue: Int, valueMeasuare: Int, nameMeasure: String, accuracy: Double) {
        super.init(targetValue: targetValue, valueMeasuare: valueMeasuare, nameMeasure: nameMeasure, accuracy: accuracy) {
            super.nameMeasure = measureName
            super.targetValue = targetValue
            super.valueMeasuare = valueMeasuare
            super.accuracy = accuracy
    }
    }
}



/*:
 *5)*
 Представьте, что вы решили изменить класс HomeSensor на сруктуру HomeSensor. Напишите ее с учетом того, что вам нужно поддержать возможность создания датчиков для разного типа измеряемых величин и определять валидность установки targetValue для каждого типа. (как вариант можно использовать дополнительный enum для строгой типизации типов датчиков)
 */


struct Rect {
    let width = 0.0
    let height = 0.0
    let x = 0.0
    let y = 0.0
    
    func interRect(rectangle: Rect) -> Bool {
        let secondREct = self
        let seccondMaxX = secondREct.x + secondREct.width
        let firstMaxX = rectangle.x + rectangle.width
        let seccondMaxY = secondREct.y + secondREct.height
        let firstMaxY = rectangle.y + rectangle.height
        if (rectangle.x < seccondMaxX && firstMaxX > secondREct.x) &&
            (rectangle.y < seccondMaxY && firstMaxY > rectangle.y) {
            return true
            
        }
        return false  }
    
}

