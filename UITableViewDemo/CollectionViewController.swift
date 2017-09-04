//
//  CollectionViewController.swift
//  UITableViewDemo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate,  UICollectionViewDataSource{
    
    var cellIdentifier = "MyCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Collection"
        let width  = self.view.frame.size.width
        let height = self.view.frame.size.height
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width:80,height:80)
        //列间距,行间距,偏移
        layout.minimumInteritemSpacing = 15
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        
        let collectionView = UICollectionView(frame: CGRect(x:0, y:0, width: width, height: height), collectionViewLayout: layout)
        collectionView.delegate   = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.white
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        self.view.addSubview(collectionView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     // MARK: - delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! MyCollectionViewCell
        cell.backgroundColor = UIColor.red
        cell.titleLabel.text = "Hello"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("click indexPath.item", indexPath.item)
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
