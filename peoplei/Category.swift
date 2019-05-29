//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class Category {
    var label: String
    var description: String
    var image: UIImage
    
    init(label: String, description: String, image: UIImage) {
        self.label = label
        self.description = description
        self.image = image
    }
}
