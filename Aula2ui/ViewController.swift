//
//  ViewController.swift
//  Aula2ui
//
//  Created by Bruno Omella Mainieri on 23/04/19.
//  Copyright © 2019 Bruno Omella Mainieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cargos:[String] = ["Chefe","Memer","Estagiário","Chairman","Charmander","Fazendeiro"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cargos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var aCelula:UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: "umaCelula")
        
        var aCelula:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "celulaStoryboard")!
        
        aCelula.textLabel!.text = cargos[indexPath.row]
        
        return aCelula
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "verDetalhe"{
            (segue.destination as! DetalheViewController).cargo = cargos[(tableView.indexPathForSelectedRow!.row)]
        }
    }

}

