//
//  VisualFormatLanguage.swift
//  ProgrammaticAutoLayout Practice
//
//  Created by Rey Matsunaga on 12/14/18.
//  Copyright © 2018 Rey Matsunaga. All rights reserved.
//

import UIKit

class VisualFormatLanguage: UIViewController {
    let redView = UIView()
    let blueView = UIView()
    let greenView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redView.backgroundColor = .red
        view.addSubview(redView)
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        greenView.backgroundColor = .green
         view.addSubview(greenView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraint Code
        
        let views: [String: Any] = [
            "redView": redView,
            "blueView": blueView,
            "greenView": greenView
        ]
        
        let metrics: [String: Any] = [
            "viewWidth": 200,
            "viewHeight": 200,
            "customVerticalSpacing": 50,
            "customHorizontalSpacing": 50
        ]
        
        NSLayoutConstraint.constraints(withVisualFormat: "H:|-customHorizontalSpacing-[redView(viewWidth)]-customHorizontalSpacing-[greenView(viewWidth)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
        
        NSLayoutConstraint.constraints(withVisualFormat: "V:|-customVerticalSpacing-[redView(viewHeight)]-customVerticalSpacing-[blueView(redView)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
        
        NSLayoutConstraint.constraints(withVisualFormat: "V:|-customVerticalSpacing-[greenView(redView)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
        
        NSLayoutConstraint.constraints(withVisualFormat: "H:|-customHorizontalSpacing-[blueView(redView)]", options: [], metrics: metrics, views: views).map { $0.isActive = true }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
