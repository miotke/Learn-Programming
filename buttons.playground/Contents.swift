//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .green
        label.backgroundColor = UIColor.blue
        
        view.addSubview(label)
        self.view = view
        
        let labelOne = UILabel()
        labelOne.frame = CGRect(x: 150, y: 200, width: 200, height: 30)
        labelOne.textColor = UIColor.green
        labelOne.backgroundColor = UIColor.blue
        labelOne.text = "New Label"

        
        view.addSubview(labelOne)
        
        let button = UIButton()
        button.backgroundColor = UIColor.blue
        button.setTitle("Button", for: .normal)
        
        view.addSubview(button)
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
