//
//  ListViewController.swift
//  SimpleListing
//
//  Created by Rabeeh KP on 27/11/18.
//  Copyright © 2018 Nfn_Labs. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet var tableView: UITableView!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }

}

extension ListViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListViewTableViewCell", for: indexPath) as? ListViewTableViewCell else{return UITableViewCell()}
        cell.imgView.image = #imageLiteral(resourceName: "thumbnail")
        cell.titleLbl.text = "Title"
        cell.descLbl.text = "Description"
        return cell
    }
}
extension ListViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let listDetailsViewController = Storyboards.DetailedList.controller as? ListDetailsViewController else {return}
        // can share any value,variable and other details to ListDetailsViewController()
        //example : listDetailsViewController.variable = shareVariable , note: create variable in ListDetailsViewController before share
        self.pushController(T: listDetailsViewController)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
