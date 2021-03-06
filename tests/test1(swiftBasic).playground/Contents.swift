/*:
 1.
 - Объявите одну константу x типа Int
 - Объявите переменную y типа Double
 - Объявите  Optional переменную sum типа Int без начального значения
 - Присвойте sum значение равное сумме x и y
 */
let x = 1
var y  = 2.0
var sum : Int?
sum =  x + Int(y)

/*:
 2. Выведите в консоль строку "x + y =  sum" где sum будет заменено на значение
 */
print("x + y = \(sum!)")
/*:
 3. Объявите константу isOdd типа Bool, которая будет показывать, что число sum нечетное
 В swift есть опертор отстатка от деления `%`. Смотри ка он работает на следующих двух строках
 */
let isOdd: Bool

if let sum = sum {
    if sum % 2 == 0 {
        isOdd = true
    }
    else {
        isOdd = false
    }
}

12 % 2 // вернет 0
13 % 2 // вернет 1 (остаток от деления)

/*:
 4. Объявите новый тип EvenOdd, который будет иметь два возможных значения. Число четное или число нечетное.
 */
enum EvenOdd{
    case even
    case odd
}
/*:
 5. Объявите функцию, которая получет на вход 1 параметр типа Int и возвращает результат типа EvenOdd
 */
func evenOdd(_ number: Int) ->EvenOdd {
    return .odd
}
/*:
 6. Выведите в консоль результат работы вашей функции для summ
 */
evenOdd(12)
/*:
 7. Напишите функцию, которая получает на вход Имя и Фамилию человека и возвращает tuple (String, String) с именем и фамилией
 */
func human(_ firstName: String, lastName: String ) -> (String, String) {
    let out = (firstName, lastName)
    return out
}

