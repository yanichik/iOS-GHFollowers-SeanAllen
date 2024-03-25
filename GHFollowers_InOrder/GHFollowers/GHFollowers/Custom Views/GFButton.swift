//
//  GFButton.swift
//  GHFollowers
//
//  Created by YB on 3/16/24.
//

import UIKit

class GFButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    // storyboard init Req'd by Apple but not used when no storyboard avail
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configureUI()
    }
    
    private func configureUI() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline) // enables dynamic font
        translatesAutoresizingMaskIntoConstraints = false // sets to use autolayout instead of storyboard
    }
}
