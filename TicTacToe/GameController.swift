//
//  GameController.swift
//  TicTacToe
//
//  Created by Douglas Ferreira on 17/07/17.
//  Copyright © 2017 Douglas Ferreira. All rights reserved.
//

import UIKit

class GameController: UIViewController {

    @IBOutlet weak var b1: TicTacButton!
    @IBOutlet weak var b2: TicTacButton!
    @IBOutlet weak var b3: TicTacButton!
    @IBOutlet weak var b4: TicTacButton!
    @IBOutlet weak var b5: TicTacButton!
    @IBOutlet weak var b6: TicTacButton!
    @IBOutlet weak var b7: TicTacButton!
    @IBOutlet weak var b8: TicTacButton!
    @IBOutlet weak var b9: TicTacButton!
    
    @IBOutlet weak var playerTurn: UILabel!
    
    var turn: Bool = true
    var turnChekcer: Bool = true
    var winner: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Definicao da imagem padrao do botao
        
        b1.setImage(UIImage(named: "default.png"), for: .normal)
        b2.setImage(UIImage(named: "default.png"), for: .normal)
        b3.setImage(UIImage(named: "default.png"), for: .normal)
        b4.setImage(UIImage(named: "default.png"), for: .normal)
        b5.setImage(UIImage(named: "default.png"), for: .normal)
        b6.setImage(UIImage(named: "default.png"), for: .normal)
        b7.setImage(UIImage(named: "default.png"), for: .normal)
        b8.setImage(UIImage(named: "default.png"), for: .normal)
        b9.setImage(UIImage(named: "default.png"), for: .normal)
        
        playerTurn.text = "Let's play some Tic Tac Toe!"
        playerTurn.font = playerTurn.font.withSize(20)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeCollor(_ sender: TicTacButton) {
        if turn == true {
            if sender.checkedState == .empty {
                sender.tintColor = UIColor.green
                sender.checkedState = .filledWithX
                sender.setImage(UIImage(named: "x.png"), for: .normal)
                turn = !turn
            } else {
                alertForInvalidSelection(title: "Invalid Space!", message: "Space already filled. Choose anonther.")
            }
        } else {
            if sender.checkedState == .empty {
                sender.tintColor = UIColor.red
                sender.checkedState = .filledWithO
                sender.setImage(UIImage(named: "o.png"), for: .normal)
                turn = !turn
            } else {
                alertForInvalidSelection(title: "Invalid Space!", message: "Space already filled. Choose anonther.")
            }
        }
    
    if turn == true {
        playerTurn.text = "Player X... is your turn!"
    } else {
        playerTurn.text = "Player O... is your turn!"
    }
        
    print(isOver())
        if isOver() == true {
            alertForEndGame(title: "\(winner)", message: "GG! By: harimasora")
//            playAgain()
        }
    }
    
    func isOver() -> Bool {
        // MARK: - Ganha com a linha!
        if b1.checkedState != ButtomState.empty && b1.checkedState == b2.checkedState && b1.checkedState == b3.checkedState {
            winner = b1.checkedState.rawValue
            return true
        }
        if b5.checkedState != ButtomState.empty && b5.checkedState == b4.checkedState && b5.checkedState == b6.checkedState {
            winner = b5.checkedState.rawValue
            return true
        }
        if b7.checkedState != ButtomState.empty && b7.checkedState == b8.checkedState && b8.checkedState == b9.checkedState {
            winner = b7.checkedState.rawValue
            return true
        }
        
        // MARK: - Ganha com a coluna
        if b1.checkedState != ButtomState.empty && b1.checkedState == b4.checkedState && b1.checkedState == b7.checkedState {
            winner = b1.checkedState.rawValue
            return true
        }
        if b2.checkedState != ButtomState.empty && b2.checkedState == b5.checkedState && b2.checkedState == b8.checkedState {
            winner = b2.checkedState.rawValue
            return true
        }
        if b3.checkedState != ButtomState.empty && b3.checkedState == b6.checkedState && b3.checkedState == b9.checkedState {
            winner = b3.checkedState.rawValue
            return true
        }
        
        // MARK: - Ganha na diagonal
        if b1.checkedState != ButtomState.empty && b1.checkedState == b5.checkedState && b1.checkedState == b9.checkedState {
            winner = b1.checkedState.rawValue
            return true
        }
        if b3.checkedState != ButtomState.empty && b3.checkedState == b5.checkedState && b3.checkedState == b7.checkedState {
            winner = b3.checkedState.rawValue
            return true }
        
        // MARK: - Caso de empate
        if b1.checkedState != .empty && b2.checkedState != .empty && b3.checkedState != .empty && b4.checkedState != .empty && b5.checkedState != .empty && b6.checkedState != .empty && b7.checkedState != .empty && b8.checkedState != .empty && b9.checkedState != .empty {
            winner = "Draw Game!"
            return true
        }
        
        return false
    }
    
    func playAgain (sender: UIAlertAction) -> Void {
        b1.checkedState = .empty
        b1.setImage(UIImage(named: "default.png"), for: .normal)
        b1.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
        b2.checkedState = .empty
        b2.setImage(UIImage(named: "default.png"), for: .normal)
        b2.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
        b3.checkedState = .empty
        b3.setImage(UIImage(named: "default.png"), for: .normal)
        b3.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
        b4.checkedState = .empty
        b4.setImage(UIImage(named: "default.png"), for: .normal)
        b4.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
        b5.checkedState = .empty
        b5.setImage(UIImage(named: "default.png"), for: .normal)
        b5.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
        b6.checkedState = .empty
        b6.setImage(UIImage(named: "default.png"), for: .normal)
        b6.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
        b7.checkedState = .empty
        b7.setImage(UIImage(named: "default.png"), for: .normal)
        b7.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
        b8.checkedState = .empty
        b8.setImage(UIImage(named: "default.png"), for: .normal)
        b8.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
        b9.checkedState = .empty
        b9.setImage(UIImage(named: "default.png"), for: .normal)
        b9.tintColor = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
    }
    
    func alertForEndGame(title: String, message: String, style: UIAlertControllerStyle = .actionSheet) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let okAction = UIAlertAction(title: "Play Again", style: .default, handler: playAgain)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func alertForInvalidSelection(title: String, message: String, style: UIAlertControllerStyle = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
//    func dismissAlert(sender: UIAlertAction) -> Void {
//        dismiss(animated: true, completion: nil)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
