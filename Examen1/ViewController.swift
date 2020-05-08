//
//  ViewController.swift
//  Examen1
//
//  Created by mbtec22 on 5/7/20.
//  Copyright © 2020 mbtec22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextCaja1: UITextField!
    @IBOutlet weak var TextCaja2: UITextField!
    @IBOutlet weak var Selector: UISegmentedControl!
    @IBOutlet weak var Respuesta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Respuesta.text = "Respuesta!";
    }

    
    @IBAction func ActionButton1(_ sender: Any) {
        let operador = Selector.selectedSegmentIndex;
        //print("Respuesta :" , operador);
        
        let ConvertValor1 = Double(TextCaja1.text!)!
        let ConvertValor2 = Double(TextCaja2.text!)!
        
        if operador == 0{
            let suma = ConvertValor1 + ConvertValor2;
            //print("Respuesta :", suma);
            Respuesta.text = "\(suma)"
        }else if operador == 1{
            let resta = ConvertValor1 - ConvertValor2;
            Respuesta.text = "\(resta)"
        }else if operador == 2{
            let multi = ConvertValor1 * ConvertValor2;
            Respuesta.text = "\(multi)"
        }else if operador == 3{
            let divicion = ConvertValor1 / ConvertValor2;
            Respuesta.text = "\(divicion)"
            
        }
    }
    
}

