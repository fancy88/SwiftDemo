//
//  TestCell.swift
//  UITableViewDemo
//
//  Created by apple on 2017/8/29.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TestCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.getUI();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getUI() {
        
        let label = UILabel.init(frame: CGRect(x: 13, y: 7, width: 100,height: 30))
        label.backgroundColor = UIColor.cyan;
        label.text = "Hello"
        label.textAlignment = .center
        self.addSubview(label)
        
        let imgView = UIImageView.init(frame: CGRect(x: UIScreen.main.bounds.size.width - 50, y: 7, width: 30,height: 30))
        imgView.backgroundColor = UIColor.green
        self.addSubview(imgView)

    }
    
}
