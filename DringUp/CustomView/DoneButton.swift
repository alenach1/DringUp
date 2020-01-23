//
//  DoneButton.swift
//  DringUp
//
//  Created by alena on 13.01.2020.
//  Copyright © 2020 alena. All rights reserved.
//


import UIKit

class DoneButton: UIButton {
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        setStyle()
    }
    
    fileprivate func setStyle() {
        self.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.clipsToBounds = false
        self.layer.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
    }
    
}
