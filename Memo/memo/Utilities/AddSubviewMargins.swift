import Foundation
import UIKit

extension UIView {
    
    func addSubviewMargin(_ view: UIView, margins: UIEdgeInsets = UIEdgeInsets.zero) {
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: self.centerYAnchor, constant: margins.top).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: margins.bottom).isActive = true
        view.rightAnchor.constraint(equalTo: self.rightAnchor, constant: margins.right).isActive = true
        view.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margins.right).isActive = true
    }
}
