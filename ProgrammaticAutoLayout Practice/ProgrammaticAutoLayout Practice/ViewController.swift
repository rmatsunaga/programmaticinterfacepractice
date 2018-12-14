//
//  ViewController.swift
//  ProgrammaticAutoLayout Practice
//
//  Created by Rey Matsunaga on 12/13/18.
//  Copyright © 2018 Rey Matsunaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var redView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        // Adding redView to the view
        NSLayoutConstraint.activate([
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redView.widthAnchor.constraint(equalToConstant: 200),
            redView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            redView.heightAnchor.constraint(equalToConstant: 100.0)
            
        ])
        
    }


}

