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
        blueView.backgroundColor = .blue
        greenView.backgroundColor = .green
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
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
