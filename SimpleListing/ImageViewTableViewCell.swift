//
//  ImageViewTableViewCell.swift
//  SimpleListing
//
//  Created by Rabeeh KP on 27/11/18.
//  Copyright © 2018 Nfn_Labs. All rights reserved.
//

import UIKit

class ImageViewTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    
    @IBOutlet var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
