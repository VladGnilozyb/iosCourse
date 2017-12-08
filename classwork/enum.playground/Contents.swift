enum NetworkError: Error {
    case serverEror
    case notFound
    case notAutorized
    
    func errorMessage() -> String {
        switch self {
        case .serverEror:
            return "Ups something goes wrong"
        case .notFound:
            return "User not found"
        case .notAutorized:
            return "User not autorized"
        }
    }
}


struct User {
    let name: String
    let id: String
}

func getUser(id: String) -> (NetworkError?, User?) {
    if Int(id)! < 1000 {
        return (nil,User(name: "Ivan", id: id))
    }
    return (.notFound, nil)
}

let userResult = getUser(id: "1200")
let errorMessage: String
if userResult.1 == nil {
    print(userResult.0!.errorMessage())
}

enum Food: String {
    case pizza = "Pizza"
    case apple = "Apple"
}

let pizza = Food.pizza
print(pizza.rawValue)

Food(rawValue: "pizza")


enum ApiEndpoint {
    case getUser(id: String)
    case postUser(name: String, email: String)
}


let getUser = ApiEndpoint.getUser(id: "1000")
