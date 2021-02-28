//
//  ViewController.swift
//  Counter
//
//  Created by Arystan on 2/28/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let custom = CounterView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100))
        view.addSubview(custom)
        
        custom.translatesAutoresizingMaskIntoConstraints = false
        custom.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        custom.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        custom.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }
    
}

