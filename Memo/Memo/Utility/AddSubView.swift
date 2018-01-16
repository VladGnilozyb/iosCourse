//
//  AddSubView.swift
//  Memo
//
//  Created by Владислав Гнилозуб on 1/15/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

extension UIView {
    func memoAddSubbview(_ view: UIView, margin: UIEdgeInsets = UIEdgeInsets.zero ) {
        self.addSubview(view)
        view.topAnchor.constraint(equalTo: self.topAnchor, constant: margin.top).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: margin.bottom).isActive = true
        view.rightAnchor.constraint(equalTo: self.rightAnchor, constant: margin.right).isActive = true
        view.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin.left).isActive = true
    }
}
