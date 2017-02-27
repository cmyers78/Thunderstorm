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
    
    var aspectRatio: CGFloat {
        switch traitCollection.horizontalSizeClass {
        case .compact:
            return 1.0
            
        default:
            return 1.0 / 3.0
        }
    }
    
    let minimumInteritemSpacingForSection : CGFloat = 0.0
    let minimumLineSpacingForSection : CGFloat = 0.0
    let insetForSection = UIEdgeInsets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Content Container Methods
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
    // MARK: - Collection View Data Source Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RootViewType.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let type = RootViewType(rawValue: indexPath.item) else {
            return UICollectionViewCell()
        }
        
        switch type {
        case .Day:
            return collectionView.dequeueReusableCell(withReuseIdentifier: NowCollectionViewCell.ReuseIdentifer, for: indexPath as IndexPath)
        case .Now:
            return collectionView.dequeueReusableCell(withReuseIdentifier: DayCollectionViewCell.ReuseIdentifer, for: indexPath as IndexPath)
        case .Week:
            return collectionView.dequeueReusableCell(withReuseIdentifier: WeekCollectionViewCell.ReuseIdentifer, for: indexPath as IndexPath)
        }
        
    }
    
    // MARK: - Collection View Flow Layout Methods
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        
        return CGSize(width: (bounds.width * aspectRatio), height: bounds.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return minimumInteritemSpacingForSection
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return minimumLineSpacingForSection
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return insetForSection
    }

    // MARK: - View Methods
    
    private func setupView() {
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        collectionView.register(NowCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: NowCollectionViewCell.ReuseIdentifer)
        collectionView.register(DayCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: DayCollectionViewCell.ReuseIdentifer)
        collectionView.register(WeekCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: WeekCollectionViewCell.ReuseIdentifer)
    }
}
