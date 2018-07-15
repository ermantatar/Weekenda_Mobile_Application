//
//  CreateWeekController.swift
//  Weekenda
//
//  Created by Erman Sahin Tatar on 7/15/18.
//  Copyright © 2018 Erman Sahin Tatar. All rights reserved.
//

import UIKit

class CreateWeekController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        navigationItem.title = "Create Company"
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
    }
    
    @objc func handleCancel(){
        dismiss(animated: true, completion: nil)
    }
    
    
}
