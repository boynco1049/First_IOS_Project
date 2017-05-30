//
//  FeedTableViewCell.swift
//  Peerapong
//
//  Created by std117 on 5/29/17.
//  Copyright © 2017 std117. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {


    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var groupsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupUI(news: News){
        self.imgView.image = news.iconImage
        self.titleLabel.text = news.title
        self.descriptionLabel.text = news.description
        self.accessoryLabel.text = "\(news.author) · \(news.view) · \(news.createdate)"
        self.groupsLabel.text = news.groups
    }
}
