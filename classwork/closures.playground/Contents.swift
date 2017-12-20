var counter: Int = 0

var incrementer = { (incrementer: Int) -> () in counter += incrementer}

incrementer(5)
print(counter)
incrementer(counter)
print(counter)

typealias Incrementer = (Int) -> ()


class Counter {
    var counter = 0
    var incrementor: (Incrementer)?
    
    func getIcrementor() -> Incrementer {
        let incremeter = { [weak self] (incrementer: Int) -> () in
            guard let strongSelf = self else {
                return
            }
            strongSelf.counter += incrementer
            print(strongSelf.counter)
        }
        return incremeter
    }
    
    deinit {
        print("destoyed")
    }
}


var counterToDestroy: Counter? = Counter()
counterToDestroy = nil
counterToDestroy?.counter


var counterObject: Counter? = Counter ()
let incCLosure = counterObject?.getIcrementor()
counterObject = nil
counterObject?.counter


incCLosure?(11)
