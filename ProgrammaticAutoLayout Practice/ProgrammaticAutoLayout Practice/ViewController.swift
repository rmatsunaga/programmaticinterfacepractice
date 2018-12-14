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
        
        // redView's X position and width
        let horizontalCenter = NSLayoutConstraint(item: redView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let redViewWidthConstraint = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200)
        
        // redView's Y position and height
        let redViewBottomSpaceConstraint = NSLayoutConstraint.init(item: redView, attribute: .bottom, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: -50)
        
        let redViewHeightConstraint = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
        
        
        
        // Adding redView to the view
        NSLayoutConstraint.activate([
            horizontalCenter,
            redViewWidthConstraint,
            redViewHeightConstraint,
            redViewBottomSpaceConstraint
            
        ])
        
    }


}

