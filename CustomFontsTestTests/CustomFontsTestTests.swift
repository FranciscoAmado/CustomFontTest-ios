//
//  CustomFontsTestTests.swift
//  CustomFontsTestTests
//
//  Created by Francisco Amado on 04/12/2017.
//  Copyright © 2017 franciscoamado. All rights reserved.
//

import XCTest
@testable import CustomFontsTest

import Snap_swift

fileprivate class ContainerView: UIView {

    private static let defaultRect = CGRect(x: 0.0, y: 0.0, width: 375, height: 667)

    init(with view: UIView, `in` frame: CGRect = defaultRect) {

        super.init(frame: frame)

        self.backgroundColor = UIColor.white
        self.addSubview(view)

        NSLayoutConstraint.activate([
            view.centerXAnchor.constraint(equalTo: view.superview!.centerXAnchor, constant: 0.0),
            view.topAnchor.constraint(equalTo: view.superview!.centerYAnchor, constant: 0.0)
        ])
    }

    required init?(coder aDecoder: NSCoder) {

        fatalError("init(coder:) has not been implemented")
    }
}

class CustomFontsTestTests: XCTestCase {
    
    override func setUp() {

        super.setUp()

        isRecording = false
    }

    func testButton() {

        let customLabel = CustomFontLabel()
        let containerView = ContainerView.init(with: customLabel)

        expect(containerView).toMatchSnapshot()
    }
}
