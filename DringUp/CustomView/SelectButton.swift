//
//  SelectButton.swift
//  DringUp
//
//  Created by alena on 12.01.2020.
//  Copyright © 2020 alena. All rights reserved.
//


import UIKit

class SelectButton: UIButton {
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        setStyle()
    }
    
    fileprivate func setStyle() {
        self.layer.borderColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.clipsToBounds = true
        self.layer.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
        
    }
    
}
