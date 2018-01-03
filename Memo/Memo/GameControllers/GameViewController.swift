
import UIKit

class GameViewController: UIViewController {
    var cardViews = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGameLayout(cardsNumber: 2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createGameLayout(cardsNumber: Int) {
        for i in 0..<cardsNumber {
            let cardView = UIView()
            cardView.backgroundColor = UIColor.black
            cardViews.append(cardView)
            self.view.addSubview(cardView)
            cardView.translatesAutoresizingMaskIntoConstraints = false
            if i % 2 != 0 {
                cardView.leftAnchor.constraint(equalTo: cardViews[i-1].rightAnchor, constant: 16).isActive = true
            }
            else {
                cardView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
                
            }
            cardView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16).isActive = true
            cardView.heightAnchor.constraint(equalToConstant: 100).isActive = true
            cardView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        }
    }
    
}

