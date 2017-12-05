//
//  CustomFontLabel.swift
//  CustomFontsTest
//
//  Created by Francisco Amado on 04/12/2017.
//  Copyright © 2017 franciscoamado. All rights reserved.
//

import UIKit

class CustomFontLabel: UILabel {

    override init(frame: CGRect) {

        super.init(frame: CGRect.zero)

        self.font = UIFont(name: "ChronicleDisplay-Bold", size: 32.0)!
        self.text = "Custom Font Crash"
        self.textColor = .black
        self.numberOfLines = 1
        self.textAlignment = .center
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder aDecoder: NSCoder) {

        fatalError("init(coder:) not implemented")
    }
}
