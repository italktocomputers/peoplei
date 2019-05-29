//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class BottomBar : UIToolbar, UIToolbarDelegate {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.items?.append(
            UIBarButtonItem(
                image: UIImage(
                    named: "settings"
                ),
                style: UIBarButtonItem.Style.plain,
                target: nil,
                action: nil
            )
        )
        
        self.items?.append(
            UIBarButtonItem(
                image: UIImage(
                    named: "profile"
                ),
                style: UIBarButtonItem.Style.plain,
                target: nil,
                action: nil
            )
        )
        
        self.items?.append(
            UIBarButtonItem(
                image: UIImage(
                    named: "help"
                ),
                style: UIBarButtonItem.Style.plain,
                target: nil,
                action: nil
            )
        )
        
        self.items?.append(
            UIBarButtonItem(
                image: UIImage(
                    named: "messages"
                ),
                style: UIBarButtonItem.Style.plain,
                target: nil,
                action: nil
            )
        )
    }
    
}
