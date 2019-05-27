//
//  BottomBar.swift
//  peoplei
//
//  Created by Andrew Schools on 5/26/19.
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
                    named: "images/settings.png"
                ),
                style: UIBarButtonItem.Style.plain,
                target: nil,
                action: nil
            )
        )
        
        self.items?.append(
            UIBarButtonItem(
                image: UIImage(
                    named: "images/profile.png"
                ),
                style: UIBarButtonItem.Style.plain,
                target: nil,
                action: nil
            )
        )
        
        self.items?.append(
            UIBarButtonItem(
                image: UIImage(
                    named: "images/help.png"
                ),
                style: UIBarButtonItem.Style.plain,
                target: nil,
                action: nil
            )
        )
        
        self.items?.append(
            UIBarButtonItem(
                image: UIImage(
                    named: "images/messages.png"
                ),
                style: UIBarButtonItem.Style.plain,
                target: nil,
                action: nil
            )
        )
    }
    
}
