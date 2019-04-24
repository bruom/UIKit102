//
//  DetalheViewController.swift
//  Aula2ui
//
//  Created by Bruno Omella Mainieri on 23/04/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    var cargo:String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let _ = cargo {
            label.text = "Essa é a tela do cargo \(cargo!)"
        }
    }
    

}
