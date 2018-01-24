import Foundation

class StatsService {
    
    func save(results: GameResult) {
        UserDefaults.standard.save(value: results, for: "gameResults")
    }
    
    func getLastResult() -> GameResult? {
        return UserDefaults.standard.load(for: "gameResults")
    }
    
    func totalGame(games: [GameResult]) -> TimeInterval {
        var time = [TimeInterval]()
        for game in games {
            time.append(game.time)
        }
        return time.reduce (0, +)
    }
    
    func scores(games: [GameResult]) -> [Double] {
        var score = [Double]()
        
        for game in games {
            let pairs = Double(game.pairs)
            let steps = Double(game.steps)
            let time = Double(game.time)
            score.append(pairs/(steps*time))
        }
        return score
    }
    
    func bestGame(games: [GameResult]) -> GameResult {
        let score = scores(games: games)
        
    }
}
