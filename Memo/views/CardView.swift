//
//  CardView.swift
//  Memo
//
//  Created by Владислав Гнилозуб on 1/15/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import UIKit

protocol CardViewDelegate: class {
    func cardFlipped(_ card: CardView)
}

class CardView: UIView {
    
    weak var delegate: CardViewDelegate?
    
    private var faceView: UIImageView
    private var backView: UIImageView
    
    init(faceName: String) {
        backView = UIImageView()
        faceView = UIImageView()
        super.init(frame: CGRect.zero)
        
        add(subview: faceView, to: self)
        add(subview: backView, to: self)
        
        
        backView.contentMode = .scaleAspectFit
        faceView.contentMode = .scaleAspectFit
        backView.image = UIImage(named: "card_back")?.withRenderingMode(.alwaysTemplate)
        faceView.image = UIImage(named: faceName)
        
        backView.backgroundColor = UIColor.white
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        addTouchToVIew(view: backView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func add(subview: UIView, to cardView: UIView) {
        cardView.addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.topAnchor.constraint(equalTo: cardView.topAnchor).isActive = true
        subview.bottomAnchor.constraint(equalTo: cardView.bottomAnchor).isActive = true
        subview.rightAnchor.constraint(equalTo: cardView.rightAnchor).isActive = true
        subview.leftAnchor.constraint(equalTo: cardView.leftAnchor).isActive = true
    }
    
    private func addTouchToVIew(view: UIView) {
        let touchRecognizer = UITapGestureRecognizer(target: self, action: #selector(flipView(sender:)))
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(touchRecognizer)
    }
    
    
    @objc private func flipView(sender: UITapGestureRecognizer) {
        if let imageView = sender.view as? UIImageView {
            let faceView = imageView.superview?.subviews.filter { $0 != imageView }.first
            delegate?.cardFlipped(self)
            if let face = faceView {
                UIView.transition(from: imageView,
                                  to: face,
                                  duration: 0.3,
                                  options: [.transitionFlipFromLeft, .showHideTransitionViews],
                                  completion: nil)
            }
        }
    }
    
}
