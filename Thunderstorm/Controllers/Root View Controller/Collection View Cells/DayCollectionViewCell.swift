//
//  DayCollectionViewCell.swift
//  Thunderstorm
//
//  Created by Christopher Myers on 2/24/17.
//  Copyright © 2017 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class DayCollectionViewCell: UICollectionViewCell {
    
    static let ReuseIdentifer = "DayCollectionViewCell"
    
    let viewController : DayViewController
    
    // MARK: - Initialization
    
    override init(frame : CGRect) {
        // Initialize View Controller
        
        viewController = DayViewController()
        
        super.init(frame: frame)
        
        setupViewController()
    }
    
    required init?(coder aDecoder: NSCoder) {
        viewController = DayViewController()
        super.init(coder: aDecoder)
        
        setupViewController()
    }
    
    private func setupViewController() {
        
    }
    
}
