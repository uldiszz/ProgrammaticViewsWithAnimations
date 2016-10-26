//
//  ViewController.swift
//  ProgrammaticViewsWithAnimations
//
//  Created by Uldis Zingis on 26/10/16.
//  Copyright © 2016 Uldis Zingis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    let topLeftButton = UIButton()
    let topRightButton = UIButton()
    let bottomLeftButton = UIButton()
    let bottomRightButton = UIButton()

    // MARK: - General

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }

    // MARK: - Methods

    func setupButton() {
        let buttons = [topLeftButton, topRightButton, bottomLeftButton, bottomRightButton]
        let colors = [UIColor.green, UIColor.yellow, UIColor.blue, UIColor.red]

        var i = 0
        for button in buttons {
            button.backgroundColor = colors[i]
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            button.addTarget(self, action: #selector(buttonExited), for: .touchDragExit)
            view.addSubview(button)
            i += 1
        }
    }
    
    func setupConstraints() {
        view.translatesAutoresizingMaskIntoConstraints = false
        
    }

    func buttonTapped() {
        
    }

    func buttonExited() {
    
    }
}

