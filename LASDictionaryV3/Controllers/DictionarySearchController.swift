//
//  DictionarySearchController.swift
//  LASDictionaryV3
//
//  Created by Jackie on 4/24/19.
//  Copyright © 2019 LAS. All rights reserved.
//

import UIKit

class DictionarySearchController: UITableViewController {
    
    let dictionary = [
    Dictionary(name: "Absorb", description: "Sign this with this letter"),
    Dictionary(name: "Alpha", description: "Sign it with this"),
    
    ]
    
    let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. register a cell for tableview
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         //returning 0 makes it so only shows results when typing in the search box.
        return dictionary.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        let dictionary = self.dictionary[indexPath.row]
        cell.textLabel?.text = dictionary.name
        return cell
    }
    
    
    
}
