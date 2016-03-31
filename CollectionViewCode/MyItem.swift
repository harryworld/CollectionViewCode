//
//  MyItem.swift
//  CollectionViewCode
//
//  Created by Harry Ng on 31/3/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class MyItem: NSCollectionViewItem {
    
    var itemView: MyItemView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func loadView() {
        itemView = MyItemView(frame: NSZeroRect)
        view = itemView!
    }
    
}
