//
//  SearchCell.swift
//  ProjectsGSG
//
//  Created by Rewaa on 12/19/19.
//  Copyright © 2019 Rewaa. All rights reserved.
//

import UIKit

class SearchCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var num: UILabel!
    @IBOutlet weak var kacl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
