import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!
    let gameService = StatsService()
    
    override func viewWillAppear(_ animated: Bool) {
        let result = gameService.getLastResult()
        let 
        if let pairs = result?.pairs, let steps = result?.steps, let time = result?.time {
            labelResult.text = """
            Last Result:
            Pairs: \(pairs)
            Steps: \(steps)
            Time: \(NSString(format: "%.2f", time))
"""
        }
    }
    
}
