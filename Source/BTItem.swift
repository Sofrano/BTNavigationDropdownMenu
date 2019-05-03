//
//  BTItem.swift
//  BTNavigationDropdownMenu
//
//  Created by Dmitriy Safarov on 03/05/2019.
//  Copyright © 2019 Pham Ba Tho. All rights reserved.
//

import Foundation
import UIKit

final public class BTItem {
    public var title: String!
    public var selectedImage: UIImage?
    public var defaultImage: UIImage?
    
    public init(_ title: String,
                defaultImage: UIImage? = nil,
                selectedImage: UIImage? = nil) {
        self.title = title
        self.selectedImage = selectedImage
        self.defaultImage = defaultImage
    }
}
