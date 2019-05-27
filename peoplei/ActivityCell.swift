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
    required init(activity: Activity) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "")
        self.textLabel?.text = activity.label
        self.detailTextLabel?.text = activity.description
        self.imageView?.image = activity.image
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
