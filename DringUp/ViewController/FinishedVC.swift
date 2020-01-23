//
//  FinishedVC.swift
//  DringUp
//
//  Created by alena on 14.01.2020.
//  Copyright © 2020 alena. All rights reserved.
//

import UIKit
enum TypeAlco {
case beer
case vodka
    case wine
}

class FinishedVC: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var weightHuman = 0
    var gender = 0
    var count = 0.0
    var alc = 0
    var alcagolType: TypeAlco? = nil
    var promile = 0.0
    var genderAlco = 0.0
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genderType(gender: gender)
        promile = (Double(alc) * (count * 3) * 5.14 / (Double(weightHuman) * 0.453592 * genderAlco))
        firstLabel.text = "\(promile) ‰"
        effect(promileR: promile)
       
       
    }
    fileprivate func effect (promileR: Double){
        if promileR < 0.3 {
            secondLabel.text = "Вы немного пьяны"
        }else if promileR < 0.8 {
            secondLabel.text = "Вам очень даж хорошо"
        }else if promileR < 1.3 {
            secondLabel.text = "Вы очень пьяны"
        }else if promileR < 1.7 {
            secondLabel.text = "Вы нахлестались как осел"
        }else{
            secondLabel.text = "Вы - долбоеб"
        }
    }
    
    fileprivate func genderType (gender: Int){
        if self.gender == 0 {
            genderAlco = 0.7
        }else if self.gender == 1{
            genderAlco = 0.5
        }
    }
    fileprivate func alcagolType (alcagolType: TypeAlco){
        switch alcagolType {
        case .beer:
            if alc == 1 {
                alc = 6 //крепость пива
            }
        case .vodka:
            if alc == 2 {
                alc = 70 //крепость водки
            }
        case .wine:
            if alc == 3 {
                alc = 9 //крепость вина
            }
        }
        
        
    }
    

}
//вино 9 водка 70 пиво 6
