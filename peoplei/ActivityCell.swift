//
//  CategoryCell.swift
//  peoplei
//
//  Created by Andrew Schools on 5/26/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class ActivityCell : UITableViewCell {
    required init(userProfileShort: UserProfileShort) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "")
        self.textLabel?.text = userProfileShort.label
        self.detailTextLabel?.text = userProfileShort.description
        self.imageView?.image = userProfileShort.image
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
