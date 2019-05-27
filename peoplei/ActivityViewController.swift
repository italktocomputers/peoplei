//
//  ActivityViewController.swift
//  peoplei
//
//  Created by Andrew Schools on 5/26/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class ActivityViewController : UIViewController {
    var category: Category? = nil
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.topItem?.title = category?.label
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func setStatus(_ sender: Any) {
        let alert = UIAlertController(
            title: "Your status",
            message: "Set your current status on this category.",
            preferredStyle: UIAlertController.Style.alert
        )
        
        alert.addAction(
            UIAlertAction(
                title: "I'm doing this now!",
                style: UIAlertAction.Style.default,
                handler: {(action: UIAlertAction!) -> Void in
                    self.statusLabel.text = "I'm doing this now!"
                    self.statusLabel.textColor = UIColor.green
                }
            )
        )
        
        alert.addAction(
            UIAlertAction(
                title: "I want to do this!",
                style: UIAlertAction.Style.default,
                handler: {(action: UIAlertAction!) -> Void in
                    self.statusLabel.text = "I want to do this!"
                    self.statusLabel.textColor = UIColor.orange
                }
            )
        )
        
        alert.addAction(
            UIAlertAction(
                title: "Clear current status.",
                style: UIAlertAction.Style.default,
                handler: {(action: UIAlertAction!) -> Void in
                    self.statusLabel.text = ""
                    self.statusLabel.textColor = UIColor.black
                }
            )
        )
        
        alert.addAction(
            UIAlertAction(
                title: "Cancel",
                style: UIAlertAction.Style.cancel,
                handler: nil
            )
        )
        
        present(alert, animated: true, completion: nil)
    }
}
