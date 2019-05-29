//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class CategoryCell : UITableViewCell {
    required init(category: Category) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "")
        self.textLabel?.text = category.label
        self.detailTextLabel?.text = category.description
        self.imageView?.image = category.image
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
