//
//  ViewController.swift
//  MyMessages
//
//  Created by JOEL CRAWFORD on 9/7/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var myTabel: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTabel.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        myTabel.delegate = self
        myTabel.dataSource = self
    }

    
    
    
    
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        
        cell.textLabel?.text = "John Smith"
        
        cell.accessoryType = .disclosureIndicator //red
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        //deselect that cell
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        //SHOW CHAT MESSAGE
        
        
        let vc = ChatViewController()
        
        vc.title = "Chat"
        navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
    
    

}

