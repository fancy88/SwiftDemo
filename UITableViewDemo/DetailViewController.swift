//
//  DetailViewController.swift
//  UITableViewDemo
//
//  Created by apple on 2017/8/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Hello"
        self.view.backgroundColor = UIColor.white
        
        self.getUI()
        // Do any additional setup after loading the view.
    }

    func getUI(){
        
       let button = UIButton(frame:CGRect(x:self.view.frame.size.width / 2.0 - 50, y:150, width:100, height:30))
        button.setTitle("click", for: .normal)
        button.backgroundColor = UIColor.cyan
        button.setTitleColor(UIColor.red, for: .normal)
        button.tag = 10000
        button.addTarget(self, action: #selector(buttonClick(button:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        let label = UILabel.init(frame: CGRect(x: self.view.frame.size.width / 2.0 - 50, y: 200, width: 100, height: 30))
        label.backgroundColor = UIColor.green
        label.text = "Hello";
        label.textColor = UIColor.red
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        
        let textField = UITextField.init(frame: CGRect(x: self.view.frame.size.width / 2.0 - 50, y: 250, width: 100, height: 30))
        textField.placeholder = "placeholder";
        textField.delegate = self
        self.view.addSubview(textField)
        
        let nextBtn = UIButton(frame:CGRect(x:self.view.frame.size.width / 2.0 - 50, y:300, width:100, height:30))
        nextBtn.setTitle("click", for: .normal)
        nextBtn.tag = 10001
        nextBtn.backgroundColor = UIColor.cyan
        nextBtn.setTitleColor(UIColor.red, for: .normal)
        nextBtn.addTarget(self, action: #selector(buttonClick(button:)), for: .touchUpInside)
        self.view.addSubview(nextBtn)
        
    }
    
    func buttonClick(button: UIButton){
        print("tapped")
        if button.tag == 10000 {
            
            self.navigationController?.popViewController(animated: true)
            
        } else if button.tag == 10001 {
            
            let VC = TestViewController()
            self.navigationController?.pushViewController(VC, animated: true)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
