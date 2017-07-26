//
//  TicTacButton.swift
//  TicTacToe
//
//  Created by Douglas Ferreira on 17/07/17.
//  Copyright © 2017 Douglas Ferreira. All rights reserved.
//

import UIKit

class TicTacButton: UIButton {
    final let WIDTH = 80
    final let HEIGHT = 80
    final let DEFAULT_COLOR = UIColor(colorLiteralRed: 67/255, green: 143/255, blue: 219/255, alpha: 1)
    final let DEFAULT_IMAGE = UIImage(named: "default.png")
    
    var checkedState: ButtomState
    
    
    required init?(coder aDecoder: NSCoder) {
        self.checkedState = .empty
        super.init(coder: aDecoder)
        
        self.frame.size = CGSize(width: WIDTH, height: HEIGHT)
        self.setImage(DEFAULT_IMAGE, for: .normal)
    }
    
    func resetToDefault() {
        self.checkedState = .empty
        self.setImage(DEFAULT_IMAGE, for: .normal)
        self.tintColor = DEFAULT_COLOR
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
