//
//  TablaVC.swift
//  Tabla
//
//  Created by Rolando Sumoza Rivas on 16/3/20..
//  Copyright © 2020 Rolando. All rights reserved.
//

import UIKit

class Table: UITableViewController {
    
    let nombres = ["Carlos", "Luis", "Pedro", "Jose"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath as IndexPath)
       // Configurar celda
       cell.textLabel?.text = nombres [indexPath.row]
       return cell
    }
   
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        self.performSegue(withIdentifier: "verDetalle", sender: self)
    }

    // MARK: - Navigation

    
}
