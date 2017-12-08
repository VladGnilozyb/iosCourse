/*:
 1.
 - Объявите одну константу width типа Double со значением 1
 - Объявите переменную perimeter типа Double со значением 12
 - Объявите константу height, со значением высоты стороны прямоугольника с цириной равной
 width и периметром = perimeter
 */
let width: Double = 1.0
var perimeter: Double = 12.0
let height = (perimeter / 2) - width
/*:
 2.
 - подберите подходящее определение (константа или переменная и тип данных) для
 - год проведения первых олимпийских игр (1896)
 - вероятность выпадения осадков в ближайшие 3 часа
 - ваше имя и возраст
 */
let firstOlympicGame: Int = 1896
let chanseRain: Int = 3
let nameAndAge: (String, Int) = ("Vlad", 20)

/*:
 3.
 - Объявите переменную Optional(Array) содержаший как элементы tuple из имени (String) и профессии (Optional String) людей
 - Добавьте в него несколько элементов, как с профессией, так и с профессией == nil
 */

var nameJob: [(String, String?)]? = []
nameJob?.append(("Dima", "Teacher"))
nameJob?.append(("Vlad", nil))



/*
 4.
 - Для массива из упражнения 3 напишите код, который выводит в консоль
 4.1 "Array not exists" -- если массив nil
 4.2 "Array is empty" -- если массив пустой
 4.3 "There is only one person" -- если массив содержит только один элемент
 */
//4.2
if let nameJobs = nameJob {
    if nameJob == nil {
        print("Array not exists")
    } else {
        if nameJobs.isEmpty {
            print("Array is empty" )
        }
        else  {
            if nameJobs.count == 1{
                print("There is only one person")
            }
        }
    }
}

/*:
 5.
 - Напишите функцию, которая получает на вход массив int и возвращает массив Int, в
 котором удалены все элементы Которые делятся на 2 или 3
 */
func changeArray (_ array: [Int]) -> [Int] {
    var resultArray: [Int] = []
    for number in array {
        if number % 2 == 0 || number % 3 == 0 {
        }
        else {
            resultArray.append( number)
        }
    }
    return resultArray
}

/*:
 6.
 - Ниже приводится выписка из прав пассажиров общественного транспорта
 
 Пассажиp имеет право провозить в нерегулярном сообщении с согласия автомобильного перевозчика при выполнении условий обеспечения безопасности пассажиров и экипажа собаку крупной породы (высота в холке более 50 см). При этом пассажир должен быть не моложе 16 лет, а если собака потенциально опасной породы, то пассажир должен быть совершеннолетним;
 
 Попробуйте объявить необходимые переменные, упомянутые в данном абзаце и написать код
 проверок, который по входным данным выведет в консоль. "Пассажир может провезти собаку" или
 "пассажир не может провезти собаку"
 
 */
let dogCapacity = 50
let ageHuman = 18
let dogDanger = true

if ageHuman >= 16 && dogCapacity <= 50 {
    if dogDanger == false {
        print("Пассажир может провезти собаку")
    }
    else
        if ageHuman >= 18 {
            print("Пассажир может провезти собаку")
        }
        else {
            print("пассажир не может провезти собаку")
    }
}
else {
    print("пассажир не может провезти собаку")
}

/*:
 7.
 - Создайте переменную -- массив Int?
 - Замените все nil в массиве на 0
 - Создайте новый массив [Int] с теми же значениями, что и в первом
 */
var array: [Int?] = [1, nil, nil, 4 ,5, nil]
for number in 0..<array.capacity  {
    if array[number] == nil {
        array[number] = 0
    }
}
print(array)



