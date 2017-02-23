//
//  RootViewController.swift
//  Thunderstorm
//
//  Created by Christopher Myers on 2/23/17.
//  Copyright © 2017 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    enum RootViewType : Int {
        case Now = 0
        case Day
        case Week
        
        static var count : Int {
            return RootViewType.Week.rawValue + 1
        }
    }
    
    @IBOutlet var collectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        // Do any additional setup after loading the view.
    }

    // MARK: - Collection View Data Source Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RootViewType.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "someCell", for: indexPath)
        
        cell.contentView.backgroundColor = .green
        
        return cell
        
    }

    // MARK: - View Methods
    
    private func setupView() {
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        collectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "someCell")
    }
}
