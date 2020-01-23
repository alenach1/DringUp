//
//  InformationHumanVC.swift
//  DringUp
//
//  Created by alena on 12.01.2020.
//  Copyright © 2020 alena. All rights reserved.
//

import UIKit

class GenderVC: UIViewController {
   
  
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var genderLabel: UILabel!
    
//    var gender = UISegmentedControl()
    var genderArray = ["Женский","Мужской"]
    var genderOn = 0
    var count = 0.0
    var alc = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        genderOn = genderSegmentedControl.selectedSegmentIndex
        
        
    }
   
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?){
super.prepare(for: segue, sender: sender)
if segue.identifier == "genderToWeight" , let dest = segue.destination as? WeightVC {
    
    dest.count = self.count
    dest.alc = self.alc
    dest.gender = self.genderOn
    }
}
    
   

}
