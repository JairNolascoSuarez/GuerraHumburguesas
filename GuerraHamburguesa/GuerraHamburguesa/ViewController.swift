//
//  ViewController.swift
//  GuerraHamburguesa
//
//  Created by Jairman on 04/03/16.
//  Copyright © 2016 Jairman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var Ihamburguesa = ColeccionDeHamburguesa()
    var Ipais = ColeccionDePaises()
    let colores = Colores()
    
    @IBOutlet weak var Lpais: UILabel!
    
    @IBOutlet weak var Lhamburguesa: UILabel!
    
    
    @IBAction func BquieroHamburguesa(sender: AnyObject) {
        
        let hamburguesaAleatorio = Ihamburguesa.obtenHamburguesa()
        let paisAleatorio = Ipais.obtenPais()
        
        Lpais.text = paisAleatorio
        Lhamburguesa.text = hamburguesaAleatorio
        
        let colorAleatorio = colores.regresaColoresAleatorio()
        view.backgroundColor=colorAleatorio
        view.tintColor=colorAleatorio
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

