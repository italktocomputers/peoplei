//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class ActivityCell : UITableViewCell {
    required init(userProfile: UserProfile) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "")
        self.textLabel?.text = userProfile.firstName + " " + userProfile.lastName
        self.detailTextLabel?.text = userProfile.sticker
        self.imageView?.image = userProfile.image
        self.imageView?.backgroundColor = UIColor.black
        self.imageView?.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        self.imageView?.bounds = CGRect(x: 0, y: 0, width: 50, height: 50)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
