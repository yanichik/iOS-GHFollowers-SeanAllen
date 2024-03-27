//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by YB on 3/19/24.
//

import UIKit

class GFTitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configure()
    }
    
    func configure() {
        textColor = .label  // black on white screen and white on black screen
        adjustsFontSizeToFitWidth = true // label reduces the text’s font size to fit the title string
        minimumScaleFactor = 0.9 // most that font size will reduce to
        lineBreakMode = .byTruncatingTail // cuts off at tail ex: "Johnath..."
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
