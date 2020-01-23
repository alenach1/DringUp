//
//  AmountOfAlco.swift
//  DringUp
//
//  Created by alena on 12.01.2020.
//  Copyright © 2020 alena. All rights reserved.
//

import UIKit

class AmountOfAlcoVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var alc: Alcogol?
    var count: Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    fileprivate func setup (){
        textField.delegate = self
        textField.keyboardType = .decimalPad
        guard let alc = self.alc else {return}
        configure(alc: alc)
        
        
       
    }
    fileprivate func getCount () {
        if textField.text != nil {
//            guard let num = textField.text as? Double else { return }
            count = Double(textField.text!)! // num
        }else {
            titleLabel.text = "Введите значение"
            count = 0
        }
        
    }
    fileprivate func configure(alc:Alcogol) {
        switch alc {
        case .beer:
            self.titleLabel.text = "Сколько пива вы выпили в литрах?"
        case .vodka:
            self.titleLabel.text = "Сколько водки вы выпили в литрах?"
        case .wine:
            self.titleLabel.text = "Сколько вина вы выпили в литрах?"

        }
        
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "selectToInfornation" else { return false }
        
        if let text = textField.text, let _ = Double(text) {
            return true
        } else { return false }
    }


}
extension AmountOfAlcoVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.becomeFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.becomeFirstResponder()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    super.prepare(for: segue, sender: sender)
    if segue.identifier == "selectToInfornation" , let dest = segue.destination as? GenderVC {
        getCount()
        dest.count = self.count
        dest.alc = self.alc!.rawValue
        
            
        }
    }
}

