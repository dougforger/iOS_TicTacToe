//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by Douglas Ferreira on 17/07/17.
//  Copyright © 2017 Douglas Ferreira. All rights reserved.
//

import Foundation
import UIKit

enum Player {
    case playerX
    case playerO
}

enum ButtomState: String {
    case empty
    case filledWithX = "Player X win!!"
    case filledWithO = "Player O win!!"
}

protocol FillButtom {
    mutating func fillButtom(_ state: ButtomState)
}

protocol ChangePlayer {
    func changePlayer(_ player: Player)
}


