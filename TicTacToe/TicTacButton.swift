//
//  TicTacButton.swift
//  TicTacToe
//
//  Created by Douglas Ferreira on 17/07/17.
//  Copyright © 2017 Douglas Ferreira. All rights reserved.
//

import UIKit

class TicTacButton: UIButton {
    var checkedState: ButtomState
    
    
    required init?(coder aDecoder: NSCoder) {
        
        self.checkedState = .empty
        super.init(coder: aDecoder)

    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
