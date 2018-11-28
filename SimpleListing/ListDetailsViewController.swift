//
//  ListDetailsViewController.swift
//  SimpleListing
//
//  Created by Rabeeh KP on 27/11/18.
//  Copyright © 2018 Nfn_Labs. All rights reserved.
//

import UIKit

class ListDetailsViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet var tableView: UITableView!
    
    //MARK: - View lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        tableView.register(UINib.init(nibName: "ImageViewTableViewCell", bundle: nil), forCellReuseIdentifier: "ImageViewTableViewCell")
        tableView.register(UINib.init(nibName: "LabelsTableViewCell", bundle: nil), forCellReuseIdentifier: "LabelsTableViewCell")
        // Do any additional setup after loading the view.
    }

}
extension ListDetailsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       var cell = UITableViewCell()
        switch indexPath.row {
        case 0 : guard let imgCell = tableView.dequeueReusableCell(withIdentifier: "ImageViewTableViewCell", for: indexPath) as? ImageViewTableViewCell else {return cell}
        imgCell.imgView.image = #imageLiteral(resourceName: "thumbnail")
            cell = imgCell
        case 1: guard let lblCell = tableView.dequeueReusableCell(withIdentifier: "LabelsTableViewCell", for: indexPath) as? LabelsTableViewCell else {return cell}
        lblCell.descriptionLbl.text = "Title"
        cell = lblCell
        case 2 : guard let lblCell = tableView.dequeueReusableCell(withIdentifier: "LabelsTableViewCell", for: indexPath) as? LabelsTableViewCell else {return cell}
        lblCell.descriptionLbl.text = "Description"
        cell = lblCell
        case 3 : guard let lblCell = tableView.dequeueReusableCell(withIdentifier: "LabelsTableViewCell", for: indexPath) as? LabelsTableViewCell else {return cell}
        lblCell.descriptionLbl.text = "Others"
        cell = lblCell
        default: break
        }
        return cell
    }
}
