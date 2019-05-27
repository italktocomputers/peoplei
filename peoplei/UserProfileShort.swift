//
//  Category.swift
//  peoplei
//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class UserProfileShort {
    var label: String
    var description: String
    var image: UIImage
    
    init(label: String, description: String, image: UIImage) {
        self.label = label
        self.description = description
        self.image = image
    }
}
