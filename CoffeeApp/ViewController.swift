//
//  ViewController.swift
//  CoffeeApp
//
//  Created by jag singh on 2016-10-31.
//  Copyright © 2016 jag singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var payPrice: UILabel!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        inputText.layer.cornerRadius = 15.0
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismisskeyboard))
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func dismisskeyboard() {
        view.endEditing(true)
    }

    @IBAction func calculateTapped(_ sender: Any) {
        
        
        if inputText.text == "" {
               errorLabel.text = "Enter value in Box"
        } else {
            let input = Double(inputText.text!)
        
            payPrice.text = "$ \(input! * 5.0)"
            
            
            dismisskeyboard()
        }
    
        
        
    }
}

