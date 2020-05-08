//
//  NewViewController.swift
//  Examen1
//
//  Created by mbtec22 on 5/7/20.
//  Copyright © 2020 mbtec22. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var TeoText1: UITextField!
    @IBOutlet weak var TeoText2: UITextField!
    @IBOutlet weak var TeoText3: UITextField!
    @IBOutlet weak var TeoText4: UITextField!
    @IBOutlet weak var LabText1: UITextField!
    @IBOutlet weak var LabText2: UITextField!
    @IBOutlet weak var LabText3: UITextField!
    @IBOutlet weak var LabText4: UITextField!
    @IBOutlet weak var LabText5: UITextField!
    @IBOutlet weak var LabText6: UITextField!
    @IBOutlet weak var NotaFinalT: UILabel!
    @IBOutlet weak var NotaFinalL: UILabel!
    @IBOutlet weak var NotaFinalG: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotaFinalT.text = "0.0"
        NotaFinalL.text = "0.0"
        NotaFinalG.text = "Resultado Final: 0.0"
    }
    
    @IBAction func EventoButton(_ sender: Any) {
        let Teoria1 = Double(TeoText1.text!)!
        let Teoria2 = Double(TeoText2.text!)!
        let Teoria3 = Double(TeoText3.text!)!
        let Teoria4 = Double(TeoText4.text!)!
        let Lab1 = Double(LabText1.text!)!
        let Lab2 = Double(LabText2.text!)!
        let Lab3 = Double(LabText3.text!)!
        let Lab4 = Double(LabText4.text!)!
        let Lab5 = Double(LabText5.text!)!
        let Lab6 = Double(LabText6.text!)!
        
        let SumoTeo = Teoria1+Teoria2+Teoria3+Teoria4;
        let CalculoTeo = SumoTeo/4;
        let SumaLab = Lab1+Lab2+Lab3+Lab4+Lab5+Lab6;
        let CalculoLab = SumaLab/6;
        let PorcentajeTeo = CalculoTeo*0.4;
        let PorcentajeLab = CalculoLab*0.6;
        let ResultadoFinal = PorcentajeTeo+PorcentajeLab;
        NotaFinalT.text = "\(PorcentajeTeo)"
        NotaFinalL.text = "\(PorcentajeLab)"
        NotaFinalG.text = "Nota Final: "+"\(ResultadoFinal)"
        
    }
    
}
