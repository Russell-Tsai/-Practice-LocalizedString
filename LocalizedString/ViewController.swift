//
//  ViewController.swift
//  LocalizedString
//
//  Created by 蔡松樺 on 21/12/2017.
//  Copyright © 2017 蔡松樺. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        navigationItem.title = NSLocalizedString("Big Title", comment: "Show Head Title")
    }
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = NSLocalizedString("LableTitle", comment: "Show LabelTitle")
        cell.detailTextLabel?.text = NSLocalizedString("DetailLableTitle", comment: "Show DetailLabelTitle")

        return cell
    }
}

