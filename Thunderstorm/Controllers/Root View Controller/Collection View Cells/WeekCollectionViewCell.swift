//
//  WeekCollectionViewCell.swift
//  Thunderstorm
//
//  Created by Christopher Myers on 2/24/17.
//  Copyright © 2017 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class WeekCollectionViewCell: UICollectionViewCell {
    static let ReuseIdentifer = "WeekCollectionViewCell"
    
    let viewController : WeekViewController
    
    // MARK: - Initialization
    
    override init(frame : CGRect) {
        // Initialize View Controller
        
        viewController = WeekViewController()
        
        super.init(frame: frame)
        
        setupViewController()
    }
    
    required init?(coder aDecoder: NSCoder) {
        viewController = WeekViewController()
        super.init(coder: aDecoder)
        
        setupViewController()
    }
    
    private func setupViewController() {
        
        viewController.view.backgroundColor = .orange
        contentView.addSubview(viewController.view)
        
        if let view = viewController.view {
            view.translatesAutoresizingMaskIntoConstraints = false
            
            view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0.0).isActive = true
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0.0).isActive = true
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0.0).isActive = true
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0.0).isActive = true
            
        }
        
    }
}
