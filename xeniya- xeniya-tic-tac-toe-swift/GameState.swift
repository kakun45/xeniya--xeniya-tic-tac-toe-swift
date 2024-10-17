//
//  GameState.swift
//  xeniya- xeniya-tic-tac-toe-swift
//
//  Created by Guest User on 10/17/24.
//

import Foundation

enum GameState {
    case win, lose, draw
    case newGame

    //    computed property
    var statusText: String {
        switch self {
        case .win:
            "It's a Win!"
        case .lose:
            "You lost (:"
        case .draw:
            "It's a draw"
        case .newGame:
            "Want to try again?"
        }
    }
}
