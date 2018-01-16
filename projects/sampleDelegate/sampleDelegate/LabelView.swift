//
//  LabelView.swift
//  sampleDelegate
//
//  Created by Владислав Гнилозуб on 1/16/18.
//  Copyright © 2018 Владислав Гнилозуб. All rights reserved.
//

import Foundation
import UIKit

class LabelView: UIView, ButtonDelegate {
    var label: UILabel
    var incrementLabel = 0
    override init(frame: CGRect) {
        label = UILabel()
        super.init(frame: frame)
        
         self.addSubview(label)
        label.text = "sameText"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor ).isActive = true
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor ).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
       
    }
    
    func buttonTapped() {
        incrementLabel += 1
        label.text = String(incrementLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
