//
//  ShowFriendsDataCell.swift
//  DemoScreen
//
//  Created by Appinventiv Technologies on 12/10/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class ShowFriendsDataCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mutualFriendLabel: UILabel!
    @IBOutlet weak var addFriendButton: UIButton!
    @IBOutlet weak var nameLabelTop: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.height/2
        self.addFriendButton.layer.borderWidth = 1
        self.addFriendButton.layer.cornerRadius = 2
        self.addFriendButton.layer.borderColor = UIColor(displayP3Red: 153.0/255.0,
                                                         green: 153.0/255.0,
                                                         blue: 153.0/255.0,
                                                         alpha: 1).cgColor
        
    }
    
    
}
