//
//  MyCollectionViewCell.swift
//  UITableViewDemo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    let width = UIScreen.main.bounds.size.width//获取屏幕宽
    var imgView = UIImageView()  // cell上的图片
    var titleLabel  = UILabel()  // cell上title
    
    override init(frame: CGRect) {
        super.init(frame: frame) //初始化各种控件
        imgView = UIImageView(frame: CGRect(x:0, y: -10, width:20, height:20))
        self.addSubview(imgView)
        
        titleLabel = UILabel(frame: CGRect(x: 5, y: 50,width: 70, height:30))
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont.boldSystemFont(ofSize: 14.0)
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.lightGray
        self.addSubview(titleLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
