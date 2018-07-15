//
//  ViewController.swift
//  Weekenda
//
//  Created by Erman Sahin Tatar on 6/19/18.
//  Copyright © 2018 Erman Sahin Tatar. All rights reserved.
//

import UIKit

class WeeksController: UITableViewController {
    
    let weeks = [Week]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        navigationItem.title = "Weeks"
        
        tableView.backgroundColor = UIColor.darkBlue
        //        tableView.separatorStyle = .none
        tableView.separatorColor = .white
        tableView.tableFooterView = UIView() // blank UIView
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "plus").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleAddCompany))
    }
    
    @objc func handleAddCompany() {
        print("Adding company..")
        //present new view controller
        let createWeekController = CreateWeekController()
        //createWeekController.view.backgroundColor = .green
        
        let navController = CustomNavigationController(rootViewController: createWeekController)
        
        present(navController, animated: true, completion: nil)
        
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .lightBlue
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = .tealColor
        let week = weeks[indexPath.row]
        cell.textLabel?.text = week.name
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weeks.count //arbitrary
    }
    
   
    
    //    override var preferredStatusBarStyle: UIStatusBarStyle {
    //        return .lightContent
    //    }
    
}








