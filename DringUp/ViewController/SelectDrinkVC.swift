//
//  SelectDrinkVC.swift
//  DringUp
//
//  Created by alena on 12.01.2020.
//  Copyright © 2020 alena. All rights reserved.
//

import UIKit

enum Alcogol : Int{
    case beer = 1
    case vodka = 2
    case wine = 3
}

class SelectDrinkVC: UIViewController {
    var alc: Alcogol?
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func selectDrink(_ sender: Any) {
        guard let button = sender as? UIButton else { return }
        let buttonTag = button.tag
        let typeOfDrink = Alcogol(rawValue: buttonTag)
        guard let alc = typeOfDrink else {return}
        self.alc = alc
        self.performSegue(withIdentifier: "selectToAmountOfAlco", sender: nil)
        print(alc)
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "selectToAmountOfAlco" , let dest = segue.destination as? AmountOfAlcoVC {
            dest.alc = self.alc
                
            }
        }
    }
    


