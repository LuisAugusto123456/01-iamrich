//
//  ViewController.swift
//  01-iamrich
//
//  Created by everis on 16/11/18.
//  Copyright © 2018 PazMestanza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    @IBOutlet weak var lblTittle: UILabel!
    @IBOutlet weak var imgPony: UIImageView!
    @IBOutlet weak var btnGift: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Methods
    @IBAction func btnGiftPressed(_ sender: UIButton) {
        
        let controller = UIAlertController(title: "Regalo", message:"""
                                                    Hola
                                                    mucho
                                                    gusto
                                                    """, preferredStyle: UIAlertController.Style.alert);
        let action = UIAlertAction(title: "Aceptar", style: .default, handler: { (action) in
           print("He pulsado aceptar")
        })
        controller.addAction(action)
        let action2 = UIAlertAction(title: "Cancelar", style: .cancel){ _ in
            print("He pulsado cancelar")
        }
        controller.addAction(action2)
        self.show(controller, sender: nil)
        
        self.lblTittle.text = "Te Amo Familia"
        self.lblTittle.textColor = UIColor.green
        self.imgPony.image = UIImage(named: "lol2")
        
        
    }
    
}

