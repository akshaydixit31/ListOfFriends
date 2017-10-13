//
//  LikersVc.swift
//  DemoScreen
//
//  Created by Appinventiv Technologies on 12/10/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class LikersVc: UIViewController {
    
    //    MARK:- Outlet's..
    
    @IBOutlet weak var viewTitleLabel: UILabel!
    @IBOutlet weak var likersTableView: UITableView!
    
    var index = 0
    //    MARK:- Variable's..
    
    var isFriend = false
    let friendList = LikersData()
    let watchList = FriendList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerCell()
        self.assignData()
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
}

extension LikersVc: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return friendList.name.count
        
    }
    
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ShowFriendsDataCellId",
                                                       for: indexPath) as? ShowFriendsDataCell
            else{
                
                fatalError("Cell not found")
                
        }
        
        if self.index == 0 {
            
            if indexPath.row == 5 || indexPath.row == 8 {
                
                cell.nameLabelTop.constant = 15
                cell.addFriendButton.isHidden = false
                cell.mutualFriendLabel.isHidden = false
                
            } else{
                
                cell.nameLabelTop.constant = 25
                cell.addFriendButton.isHidden = true
                cell.mutualFriendLabel.isHidden = true
                cell.mutualFriendLabel.text = "\(indexPath.row) mutual friend"
                
            }
            
            cell.nameLabelTop.constant = 15
            cell.nameLabel.text = self.friendList.name[indexPath.row]
            cell.profileImage.image = UIImage(named: self.friendList.dpImage[indexPath.row])
            
            return cell
            
        } else {
            
            cell.nameLabelTop.constant = 25
            cell.addFriendButton.isHidden = true
            cell.mutualFriendLabel.isHidden = true
            cell.nameLabel.text = self.watchList.name[indexPath.row]
            cell.profileImage.image = UIImage(named: self.watchList.dpImage[indexPath.row])
            
            return cell
            
        }
        
    }
    
    
}

extension LikersVc {
    
    func registerCell() {
        
        self.likersTableView.rowHeight = 80
        
        let cellNib = UINib(nibName: "ShowFriendsDataCell",
                            bundle: nil)
        self.likersTableView.register(cellNib,
                                      forCellReuseIdentifier: "ShowFriendsDataCellId")
        
        self.likersTableView.dataSource = self
        self.likersTableView.delegate = self
        
        self.likersTableView.rowHeight =  UITableViewAutomaticDimension
        
    }
    
    func assignData(){
        
        if self.index == 0 {
            
            self.viewTitleLabel.text = "LIKERS"
            
        } else {
            
            self.viewTitleLabel.text = "WATCHLIST'S FRIENDS"
            
        }
        
    }
    
}
