//
//  QuoteProViewController.swift
//  QuotePro
//
//  Created by Frances ZiyiFan on 6/12/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

import UIKit

class QuoteProViewController: UIViewController , UITableViewDataSource{
    
    var quoteList : [Quote]?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.quoteList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.detailTextLabel?.text = quoteList?[indexPath.row].author
        return cell
    }

}
