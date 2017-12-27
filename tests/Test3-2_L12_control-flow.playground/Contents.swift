import Foundation

/*:
 *1)*
 Напишите функцию errorMessage, которая получает на вход аргумент типа Error (не TestError!!) и выводит ее описание в консоль если ошибка принадлежит одному из вариантов TestError
 Если ошибки нет среди элементов enum, то выводится "Error, something went wrong"
 */
enum TestError: Error {
    case one
    case two
    case three
    
    var localizedDescription: String {
        switch self {
        case .one:
            return NSLocalizedString("one", comment: "one error")
        case .two:
            return NSLocalizedString("two", comment: "two error")
        case .three:
            return NSLocalizedString("three", comment: "three error")
        }
    }
}
func errorMessage(error: Error) {
    switch error {
    case TestError.one:
        print(TestError.self.one)
    case TestError.two:
        print(TestError.self.two)
    case TestError.three:
        print(TestError.self.three)
    default:
        print("Error, something went wrong")
    }
}


/*:
 *2)*
 - Объявите и выполните функцию которая принимает массив typle типа (Int, Int) и операцию Operation и возвращаетм массив Int
 Если операция plus , то элементы выходного массива будут равны сумме двух элементов каждого tuple из входного массива
 Если операция minus, то элементы выходного массива будут равны разности элеменов tuple
 */
enum Operation {
    case plus, minus
}

func simpleCalc(array:[(Int,Int)], operation: Operation) -> [Int] {
    var arr = [Int]()
    switch operation {
    case .plus:
        for (firstNumber, secondNumber) in array {
            let temp: Int
            temp = firstNumber + secondNumber
            arr.append(temp)
        }
    case .minus:
        for (firstNumber, secondNumber) in array {
            let temp: Int
            temp = firstNumber - secondNumber
            arr.append(temp)
        }
        
    }
    return arr
}
simpleCalc(array: [(1,2), (3,4)], operation: .plus)

/*:
 *3)*
 Выведите все строки короче 10 сиволов, которые начинаются на "a" или "A" и все строки начинающиеся на b или "B"
 */
let strings = ["adfkjsd", "Akdsfjkdfjldfjk", "bdkk", "kaf", " afurl", "ABBA", "ABBBBBBBBBBBBBBBBA", "no", "1234566dkjdksdjksd", "bbbbbbbbbbbbbbbbbbbb", "Ваc?"]
for string in strings {
    if (string.lowercased().hasPrefix("a") && string.count <= 10) || string.lowercased().hasPrefix("b") {
        print(string)
    }
}

/*:
 *4)*
 У вас есть 3 банкноты: x, y и z рубля.
 напишите функцию, которая получает сумму и возвращает Bool
 true если сумма может быть набрана из ваших банкнот
 false если нет
 Функция должна работать при любых целых положительных x, y и z
 */
let x = 10
let y = 5
let z = 2

func cash(_ someSum: Int) -> Bool {
    if someSum == x + y + z {
        return true
    }
    else {
        return false
    }
}

/*:
 *5)*
 Напишите функцию, которая проверяет что треугольник является равносторонним и возвращает соотвественно true или false
 */
class Triangle {
    let AB: Double
    let BC: Double
    let CA: Double
    init(AB:  Double, BC: Double, CA: Double) {
        self.AB = AB
        self.BC = BC
        self.CA = CA
    }
}

func triangleIsRovn( someTriangle: Triangle) -> Bool {
    if someTriangle.AB == someTriangle.BC && someTriangle.BC == someTriangle.CA {
        return true
    }
    else {
        return false
    }
}

/*:
 *6)*
 Напишите функцию, которая выводит из словаря [Triangle : Double] площади всех равносторонних треугольников.
 Значения в словаре и есть площади треугольников
 */
func ploshTriangle(someTriangle: Triangle) -> Double {
    var plosh = Double()
    if triangleIsRovn(someTriangle: someTriangle) {
        plosh = sqrt(3)/4 * pow(someTriangle.AB, 2)
    }
    
    return plosh
}
/*:
 *7)*
 Выведите количество строк в массиве [String], которые содержат цифры.
 */
let someStrings = ["1","2", "ada"]
var count = Int()
for str in someStrings {
    if str.contains("1") ||  str.contains("2") ||  str.contains("3") ||  str.contains("4") || str.contains("5") ||  str.contains("6") ||  str.contains("7") ||  str.contains("8") || str.contains("9") {
        count += 1
    }
}
print(count)

/*:
 *8)*
 Сервер выполняет резервное копирование если в данный момент нет готовых (isReady) задач (Task) в очереди на выполнение (tasks)
 Если копирование не выполнялось более 10 дней, то копирование стартует независимо от наличия задач в очереди
 Напишите функцию, которая будет проверять можно ли запустить сейчас резервное копирование.
 */
struct Task {
    var isReady: Bool
}

struct Server {
    var tasks: [Task]
    let lastCopyDate: Date
    var timePassed: TimeInterval { //Время в секундах
        return lastCopyDate.timeIntervalSince(Date())
    }
    
    func shouldPerformBackup() -> Bool {
        var check = true
        if timePassed < 864000 {
            for task in tasks {
                if task.isReady {
                    check = false
                }
            }
            return check
        }
        else {
            return check
        }
    }
}
