//
//  AMModalStatusView.swift
//  AMModalStatus
//
//  Created by Andrew Miotke on 11/5/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit

public class AMModalStatusView: UIView {

    @IBOutlet private weak var statusImage: UIImageView!
    @IBOutlet private weak var headingLabel: UILabel!
    @IBOutlet private weak var subheadLabel: UILabel!
    
    let nibName = "AMModalStatusView"
    var contentView: UIView!
    
    // MARK: Set up view
    
    public override init(frame: CGRect) {
        // For use in code
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        // For use in Interface Builder
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(contentView)
        
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        headingLabel.text = ""
        subheadLabel.text = ""
    }
    
    // Provide functions to update view
    public func set(image: UIImage) {
        self.statusImage.image = image
    }
    
    public func set(headline text: String) {
        self.headingLabel.text = text
    }
    
    public func set(subheadLabel text: String) {
        self.subheadLabel.text = text
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
