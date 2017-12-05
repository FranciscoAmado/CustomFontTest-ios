//
//  ViewController.swift
//  CustomFontsTest
//
//  Created by Francisco Amado on 04/12/2017.
//  Copyright © 2017 franciscoamado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)

        let customLabel = CustomFontLabel()

        self.view.addSubview(customLabel)

        NSLayoutConstraint.activate([
            customLabel.centerXAnchor.constraint(equalTo: customLabel.superview!.centerXAnchor, constant: 0.0),
            customLabel.topAnchor.constraint(equalTo: customLabel.superview!.centerYAnchor, constant: 0.0)
        ])
    }
}
