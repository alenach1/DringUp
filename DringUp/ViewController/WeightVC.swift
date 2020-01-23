//
//  WeightVC.swift
//  DringUp
//
//  Created by alena on 13.01.2020.
//  Copyright © 2020 alena. All rights reserved.
//

import UIKit

class WeightVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var weightHuman = 40
    var gender = 0
    var count = 0.0
    var alc = 0
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightPicker: UIPickerView!
    let weight = [40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110, 115]
     
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
     }
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return String(weight[row])
     }
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return weight.count
     }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        weightLabel.text = "Ваш вес \(weight[row]) кг"
        weightHuman = weight[row]
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        weightLabel.text = "Ваш вес \(weightHuman) кг"
        weightPicker.delegate = self
        weightPicker.dataSource = self
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    super.prepare(for: segue, sender: sender)
    if segue.identifier == "weightToFinished" , let dest = segue.destination as? FinishedVC {
        
        dest.count = self.count
        dest.alc = self.alc
        dest.gender = self.gender
        dest.weightHuman = self.weightHuman
        }
    }

   
    }
   


