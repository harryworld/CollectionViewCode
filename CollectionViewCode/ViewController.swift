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
        collectionView.collectionViewLayout = NSCollectionViewFlowLayout()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        scrollView.documentView = collectionView
        
        view.addSubview(scrollView)
        
        collectionView.registerClass(MyItem.self, forItemWithIdentifier: "MyItem")
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSCollectionViewDataSource {
    
    func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAtIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem {
        return collectionView.makeItemWithIdentifier("MyItem", forIndexPath: indexPath)
    }
    
}

extension ViewController: NSCollectionViewDelegate {
    
}

extension ViewController: NSCollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> NSSize {
        return NSSize(width: 60, height: 30)
    }
    
}
