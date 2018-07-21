//
//  ViewController.swift
//  CollectionViewCode
//
//  Created by Harry Ng on 31/3/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var scrollView: NSScrollView!
    var collectionView: NSCollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView = NSScrollView(frame: view.frame)
        
        collectionView = NSCollectionView(frame: NSZeroRect)
        let layout = NSCollectionViewFlowLayout()
        layout.itemSize = NSSize(width: 60, height: 60)
        collectionView.collectionViewLayout = layout
        collectionView.dataSource = self
        collectionView.delegate = self
        
        scrollView.documentView = collectionView
        
        view.addSubview(scrollView)
        
        collectionView.register(MyItem.self, forItemWithIdentifier: .init("MyItem"))
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSCollectionViewDataSource {
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        return collectionView.makeItem(withIdentifier: .init("MyItem"), for: indexPath)
    }
    
}

extension ViewController: NSCollectionViewDelegate {
    
}
