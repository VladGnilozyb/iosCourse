import Foundation

/*:
 *1)*
 - Объявите и выполните функцию isValidTriangle, котрая получает на вход 3 параметра,
 длины сторон треугольника и возвращает true, если из таких трех отрезков можно сделать треугольник
 (cумма двух сторон треугольника всегда меньше третьей стороны)
 */
func truRectangle(firstSide: Double, secondSide: Double, thirdSide: Double)-> Bool {
    let firstAndSecond = firstSide + secondSide
    let secondAndThird = thirdSide + secondSide
    let firstAndThird = firstSide + thirdSide
    
    if firstAndSecond > thirdSide && secondAndThird > firstSide && firstAndThird > secondSide {
        return false
    }
    return true
}
/*:
 *2)*
 - Объявите и выполните функцию которая принимает массив [Double?]? и возвращает среднее значение элементов массива
 - во всех случаях, когда считать среднее значение невозможно (нет элементов) функция возвращает nil
 */
func averageArray(_ array:[Double?]?) -> Double? {
    guard let array = array else {
        return nil
    }
    var summ = 0.0
    var count = 0.0
    for number in array {
        if let number = number {
            summ += number
            count += 1
        }
    }
    if summ != 0.0 {
        return summ/count
    }
    else {
        return nil
    }
}

/*:
 *3)*
 - Напишите функцию которая печатает каждую вторую троку из массива [String]
 */
func printString(_ array: [String]) {
    for (index, words) in array.enumerated() {
        if index % 2 != 0 && index != 0{
            print(words)
        }
    }
}

/*:
 *4)*
 Напишите функцию, которая должна определить, пройдет ли кирпич в отверстие. Даны константы -- размеры отверстия (длина и высота). Значения длины, ширины и высоты кирпича передаются как параметры функции.
 */
let lengthHole = 20
let heightHole = 10
func brickIsTrue(length: Int, width: Int, height: Int) {
    if (length <= lengthHole || width <= lengthHole)&&(height <= heightHole) {
        print("Пройдет")
    }
    else {
        print("Не пройдет")
    }
}

/*:
 *5)*
 
 Дан массив чисел [Int]
 Напишите функцию, которая возвращает самое большое из отрицательных чисел в этом массиве.
 Пример: [-10, 2, 0, 187, 1, -2, -3] -> -2
 если отрицательных чисел нет вообще, то верните 0
 */
func maxInNegative(_ array: [Int])-> Int {
    var count = 0
    for numbers in array {
        if numbers < 0 {
            count += 1
        }
    }
    if count > 0 {
        let arr = array.filter{ $0 < 0 }
        return arr.max()!
    }
    else {
        return 0
    }
}

/*:
 *6)*
 
 Напишите функцию, которая для чисел от 1 до 50 выводит в консоль все числа кроме тех, что делятся на 3 или заканчиваются на 3
 */
func filterArray() -> [Int] {
    let array = Array(1...50)
    return array.filter{$0 % 3 != 0 && String($0).last != "3" }
}

/*:
 *7)*
 
 Напишите функцию, которая умеет решать уравнения типа
 x + 3 = 5
 3 + y = 8
 z - 9 = 1
 функция получает на вход строку типа "4 + x = 8" и возвращает решение (Double)
 */
/*
 *8)*
 напишите функцию, которая вычисляет число Pi методом Монте-Карло до тех пор пока точность будет не хуже 0.1 % (просто сравните с библиотечным значением)
 
 Кто не знает. Суть метода. Берем квадрат (0,0,1,1) и вписывем в него четверть круга с ценром в точке (0,0) и случайным образом помещаем в квадрат точки (rand(),rand())
 */
let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand48(Int(time))
let randomNumber = drand48() //  случайное число от 0 до 1

func piMonte() -> Double {
    var countInCircle = Double()
    var countAll = Double()
    var piMonte = Double()
    let piLib = Double.pi
    
    while piMonte != piLib {
        countAll += 1
        let dotX = drand48()
        let dotY = drand48()
        if pow(dotX,2) + pow(dotY, 2) <= 1 {
            countInCircle += 1
        }
       piMonte = 4 * countInCircle/Double(countAll)
    }
    return piMonte
}

