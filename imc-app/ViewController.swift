//
//  ViewController.swift
//  imc-app
//
//  Created by Lissandra Lunardi on 07/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    
    @IBOutlet weak var viResult: UIView!
    
    var imc: Double = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculated(_ sender: Any) {
        if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!){
            imc = weight / (height*height)
            
            showResult()
        }
        
    }
    func showResult(){
        var result: String = ""
        var image: String = ""
        switch imc {
        case 0..<16:
            result = "magreza"
            image = "magro"
        case 16..<18.5:
            result = "abaixo do peso"
            image = ""
        case 18.5..<25:
            result = "peso ideal"
            image = "ideal"
        case 25..<30:
            result = "sobrepeso"
            image = "sobre"
        default:
            result = "obesidade"
            image = "obesidade"
        }
        lbResult.text = result
        ivResult.image = UIImage (named: image)
        viResult.isHidden = false
        
    }
    
}

