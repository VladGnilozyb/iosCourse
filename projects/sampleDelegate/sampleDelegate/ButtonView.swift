//
//  ButtonView.swift
//  sampleDelegate
//
//  Created by Владислав Гнилозуб on 1/16/18.
//  Copyright © 2018 Владислав Гнилозуб. All rights reserved.
//

import Foundation
import UIKit

protocol ButtonDelegate: class {
    func buttonTapped()
}

class ButtonView: UIView {
    let button: UIButton
    weak var delegate: ButtonDelegate?
    
    override init(frame: CGRect) {
        button = UIButton()
        super.init(frame: frame)
        
        self.addSubview(button)
        button.setTitle("tapped me", for: UIControlState.normal)
        button.titleLabel?.textColor = .black
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
       
       
    }
    
    @objc func tapped() {
        delegate?.buttonTapped()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   

}


