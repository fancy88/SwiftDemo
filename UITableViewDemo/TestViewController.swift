//
//  TestViewController.swift
//  UITableViewDemo
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Test"

        tableView = UITableView.init(frame: self.view.frame)
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView.init()
        self.view.addSubview(tableView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITableViewDelegate & UITableViewDataSource
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellID = "cellID"
        let cell  = TestCell.init(style: .default, reuseIdentifier: cellID)
        return cell

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("click %ld row", indexPath.row)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
