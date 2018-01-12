import Foundation

class Game {
    let cardNames = (1...19).map {"card\($0)"}
    var isFineshed = false
    var cardPairs : Int
    var flippedCard: Int?
    var cards: [Card]
    
    init(cardPairs: Int) {
        self.cardPairs = cardPairs
        
        var names = [String]()
         cards = [Card]()
        for _ in 0..<cardPairs {
            let index =  arc4random_uniform(UInt32(cardNames.count))
            names.append(cardNames[Int(index)])
        }
        for name in names {
            let card = Card(isFlipped: false, imageName: name)
            let card2 = Card(isFlipped: false, imageName: name)
            cards.append(card)
            cards.append(card2)
        }
        cards = cards.shuffle()
    }
    func cardFLipped(at index : Int) {
        if let flipped = flippedCard {
            twoCardsFlipped(cardOne: flipped, cardTwo: index)
            flippedCard = nil
        }
        else {
            flippedCard = index
        }
    }
    
    func twoCardsFlipped(cardOne: Int, cardTwo: Int) -> Bool {
        if cardOne == cardTwo {
            cards[cardOne].isFlipped = true
            cards[cardTwo].isFlipped = true
            let cardsRemaind = cards.filter { !($0.isFlipped) }.count
            if cardsRemaind == 0 {
                isFineshed = true
                print("game finished!!")
            }
            return true
        }
        else {
            return false
        }
    }
}
