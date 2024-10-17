//
//  Move.swift
//  xeniya- xeniya-tic-tac-toe-swift
//
//  Created by Guest User on 10/17/24.
//

import Foundation

// one of 3 ways to make a type
enum Sign {
    case rock
    case paper
    case scissors
}

// model the structure: keepss track of 3 possible moves in the game
// emoji hot keys ctr+cmd+space with referee() method to keep track of the GameState based on opponent's choice
struct Move {
    var sign: Sign
    // computed property one of enum choices
    var emoji: String {
        switch sign {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    func referee(against opponent: Move) -> GameState {
        //        tie
        if self.sign == opponent.sign {
            return .draw
        }
        
        //        win
        switch self.sign {
        case .rock:
            if opponent.sign == .scissors {return .win}
        case .paper:
            if opponent.sign == .rock {return .win}
        case .scissors:
            if opponent.sign == .paper {return .win}
        }
        //        lose
        return .lose
    }
}
