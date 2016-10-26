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
        setupConstraints()
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
        let buttons = [topLeftButton, topRightButton, bottomLeftButton, bottomRightButton]
        for button in buttons {
            button.translatesAutoresizingMaskIntoConstraints = false
        }
        
        let topButtonWidths = NSLayoutConstraint(item: topLeftButton, attribute: .width, relatedBy: .equal, toItem: topRightButton, attribute: .width, multiplier: 1.0, constant: 0)
        let topButtonHeights = NSLayoutConstraint(item: topLeftButton, attribute: .height, relatedBy: .equal, toItem: topRightButton, attribute: .height, multiplier: 1.0, constant: 0)
        let bottomButtonWidths = NSLayoutConstraint(item: bottomLeftButton, attribute: .width, relatedBy: .equal, toItem: bottomRightButton, attribute: .width, multiplier: 1.0, constant: 0)
        let bottomButtonHeight = NSLayoutConstraint(item: bottomLeftButton, attribute: .height, relatedBy: .equal, toItem: topRightButton, attribute: .height, multiplier: 1.0, constant: 0)
        
        view.addConstraints([topButtonWidths, topButtonHeights, bottomButtonWidths, bottomButtonHeight])
        
        let greenLeadingConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0)
        let greenTopConstraints = NSLayoutConstraint(item: topLeftButton, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0)
        
        let greenToYellowConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .trailing, relatedBy: .equal, toItem: topRightButton, attribute: .leading, multiplier: 1.0, constant: 0)
        
        let greenToBlueConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .bottom, relatedBy: .equal, toItem: bottomLeftButton, attribute: .top, multiplier: 1.0, constant: 0)
        
        let yellowTopConstraint = NSLayoutConstraint(item: topRightButton, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0)
        let yellowTrailingConstraint = NSLayoutConstraint(item: topRightButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0)
        
        let blueLeadingConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0)
        let blueButtomConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0)
        
        let blueToRedConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .trailing, relatedBy: .equal, toItem: bottomRightButton, attribute: .leading, multiplier: 1.0, constant: 0)
        
        let yellowToRedConstraint = NSLayoutConstraint(item: topRightButton, attribute: .bottom, relatedBy: .equal, toItem: bottomRightButton, attribute: .top, multiplier: 1.0, constant: 0)
        
        let redBottomConstraint = NSLayoutConstraint(item: bottomRightButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0)
        
        let redTrailingConstraint = NSLayoutConstraint(item: bottomRightButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([
            greenLeadingConstraint,
            greenTopConstraints,
            greenToYellowConstraint,
            greenToBlueConstraint,
            yellowTopConstraint,
            yellowTrailingConstraint,
            blueLeadingConstraint,
            blueButtomConstraint,
            blueToRedConstraint,
            yellowToRedConstraint,
            redBottomConstraint,
            redTrailingConstraint
        ])
    }

    func buttonTapped() {
        
    }

    func buttonExited() {
    
    }
}





