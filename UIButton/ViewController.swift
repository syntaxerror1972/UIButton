//
//  ViewController.swift
//  UIButton
//
//  Created by Shrawan Shinde on 15/12/16.
//  Copyright © 2016 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myFirstButton = UIButton()
    var roundedButton = UIButton()
    
     var fontButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        
        //simple UIButton in swift 3.0
        myFirstButton.setTitle(firstButton, for: .normal)
        myFirstButton.setTitleColor(UIColor.black, for: .normal)
        myFirstButton.backgroundColor=UIColor.red
        myFirstButton.frame = CGRect(x: 150, y: 200, width: 150, height: 50)
        myFirstButton.addTarget(self, action: #selector(self.myFirstButtonTapped), for: .touchUpInside)
        
        //simple UIButton with font in swift 3.0
        fontButton.setTitle(secondButton, for: .normal)
        fontButton.setTitleColor(UIColor.white, for: .normal)
        fontButton.backgroundColor=UIColor.blue
        fontButton.titleLabel?.font=UIFont(name: "Pacifico", size: 25)
        fontButton.frame = CGRect(x: 150, y: 300, width: 150, height: 50)
        fontButton.addTarget(self, action: #selector(self.fontButtonTapped), for: .touchUpInside)
        
        
        //simple UIButton  withj rounded corner in swift 3.0
        roundedButton.setTitle(thirdButton, for: .normal)
        roundedButton.backgroundColor = .clear
        roundedButton.layer.cornerRadius = 5
        roundedButton.layer.borderWidth = 1
        roundedButton.layer.borderColor = UIColor.black.cgColor
        roundedButton.setTitleColor(UIColor.black, for: .normal)
        roundedButton.frame = CGRect(x: 150, y: 400, width: 150, height: 50)
        roundedButton.addTarget(self, action: #selector(self.roundedButtonTapped), for: .touchUpInside)
        
        self.view.addSubview(myFirstButton)
        self.view.addSubview(fontButton)
        self.view.addSubview(roundedButton)
    }
    
    func myFirstButtonTapped(sender : UIButton) {
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "myFirstButton Button Clicked";
        alertView.show();
    }
    
    func roundedButtonTapped(sender : UIButton) {
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "roundedButton Button Clicked";
        alertView.show();
    }
    
    func fontButtonTapped(sender : UIButton) {
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "fontButtonTapped Button Clicked";
        alertView.show();
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

