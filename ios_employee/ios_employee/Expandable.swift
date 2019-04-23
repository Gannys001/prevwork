//
//  Expandable.swift
//  ios_employee
//
//  Created by Braelyn Chen on 4/16/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

protocol Expandable {
    func collapse()
    func expand(in collectionView: UICollectionView)
}
