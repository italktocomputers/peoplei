//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class UserProfile {
    var firstName: String
    var lastName: String
    var age: Int
    var city: String
    var sticker: String
    var image: UIImage
    
    init(firstName: String, lastName: String, age: Int, city: String, sticker: String, image: UIImage) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.city = city
        self.sticker = sticker
        self.image = image
    }
}
