//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Heidi Hutchinson on 1/25/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    private var ratingButtons = [UIButton()]
    
    var rating = 0
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
        
    }
    
    @objc func ratingbuttonTapped(button: UIButton) {
        print("Button pressed")
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    //MARK: Private Methods
    private func setupButtons() {
        for _ in 0..<5 {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            //Add Constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint (equalToConstant: 44.0).isActive = true
            
            // Setup the button acttion
            button.addTarget(self, action: #selector(RatingControl.ratingbuttonTapped(button:)), for: .touchUpInside)
            
            //Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            
            ratingButtons.append(button)
    }
}
}



