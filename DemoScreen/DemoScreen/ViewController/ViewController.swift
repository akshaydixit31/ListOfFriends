//
//  ViewController.swift
//  DemoScreen
//
//  Created by Appinventiv Technologies on 12/10/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func likersButton(_ sender: UIButton) {
        
        guard let likerScene = storyboard?.instantiateViewController(withIdentifier: "LikersVcId") as? LikersVc
            
            else{
                
                fatalError("Scene not found")
                
        }
        
        likerScene.index = 0
        self.navigationController?.pushViewController(likerScene,
                                                      animated: true)
        
    }
    
    @IBAction func watchListButton(_ sender: UIButton) {
        
        guard let likerScene = storyboard?.instantiateViewController(withIdentifier: "LikersVcId") as? LikersVc
            else{
                
                fatalError("Scene not found")
        }
        
        likerScene.index = 1
        self.navigationController?.pushViewController(likerScene,
                                                      animated: true)
        
    }
}

