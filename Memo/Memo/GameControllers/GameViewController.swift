
import UIKit

class GameViewController: UIViewController, CardViewDelegate {
    
    
    var cardViews = [UIView]()
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cardsPairs = 2
        game = Game(cardPairs: cardsPairs)
        createGameLayout(cardsNumber: cardsPairs*2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createGameLayout(cardsNumber: Int) {
        let cardsContainer = CardsContainer()
        cardsContainer.translatesAutoresizingMaskIntoConstraints = false
        view.memoAddSubbview(cardsContainer)
        
        for i in 0..<cardsNumber {
            let cardView = CardView(faceName: game.cards[i].imageName)
            cardView.delegate = self
            cardsContainer.addSubview(cardView)
            cardView.translatesAutoresizingMaskIntoConstraints = false
            
            cardViews.append(cardView)
            
        }
        cardsContainer.layout()
    }
    
    func cardFlipped(_ card: CardView) {
        if let tappedIndex = indexFor(card: card) {
            game.cardFLipped(at: tappedIndex)
        }
    }
    
    func indexFor(card: UIView?) -> Int? {
        guard let card = card else {
            return nil
        }
        return cardViews.index(of: card)
    }
}


