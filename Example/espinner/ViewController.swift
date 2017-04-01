//
//  ViewController.swift
//  espinner
//
//  Created by cosmo1234 on 04/01/2017.
//  Copyright (c) 2017 cosmo1234. All rights reserved.
//

import UIKit
import espinner

class ViewController: UIViewController {
    
    let button: UIButton = {
        let btn = UIButton()
        btn.setTitle("Show Activity", for: .normal)
        btn.addTarget(self, action: #selector(showAct), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
        view.addSubview(button)
        if #available(iOS 9.0, *) {
            NSLayoutConstraint.activate([
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.widthAnchor.constraint(equalToConstant: 200),
                button.heightAnchor.constraint(equalToConstant: 20)
                ])
        } else {
            // Fallback on earlier versions
        }
    }
    func showAct(){
        espinner.start(backgroundColor: .white, uiview: view)
    }

    
}

