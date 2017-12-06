//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 200)
        label.text = "Hello World!"
        label.textColor = .black
        
        let button = configureButton()
        view.addSubview(button)
        
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(label)
        view.addSubview(configureButton())
        self.view = view
    }
    private func configureButton() -> UIButton{
        let button = UIButton()
        // button.frame = CGRect(x: 150, y: 100, width: 200, height: 50)
        button.titleLabel?.text = "tap this"
        button.titleLabel?.textColor = .black
        button.titleLabel?.frame = button.bounds
        button.backgroundColor = .gray
        return button
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
