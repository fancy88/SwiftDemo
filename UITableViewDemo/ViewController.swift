//
//  ViewController.swift
//  UITableViewDemo
//
//  Created by apple on 2017/8/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Hello"
        tableView = UITableView.init(frame: self.view.frame)
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView.init()
        self.view.addSubview(tableView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   // MARK: - UITableViewDelegate & UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cellID = "cellID"
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellID)
        cell.textLabel?.text = "Hello"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        print("click %ld row", indexPath.row)
        
        let VC = DetailViewController()
        self.navigationController?.pushViewController(VC, animated: true)
        
    }


}

