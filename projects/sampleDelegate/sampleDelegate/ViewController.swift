//
//  ViewController.swift
//  sampleDelegate
//
//  Created by Владислав Гнилозуб on 1/16/18.
//  Copyright © 2018 Владислав Гнилозуб. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let buttonView = ButtonView()
    let labelView = LabelView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(buttonView)
        view.addSubview(labelView)
        
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        labelView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        buttonView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        buttonView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        buttonView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        labelView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 30).isActive = true
        labelView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        labelView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        labelView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        buttonView.delegate = labelView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

