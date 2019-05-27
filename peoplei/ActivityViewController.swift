//
//  ActivityViewController.swift
//  peoplei
//
//  Created by Andrew Schools on 5/26/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class ActivityViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    var category: Category? = nil
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var statusLabel: UILabel!
    var selectedUserProfile: UserProfileShort? = nil
    var data: [UserProfileShort] = [
        UserProfileShort(
            label: "Andrew Schools",
            description: "Age 38 | Concord NH",
            image: UIImage(
                named: "images/profiles/andrew.png"
            )!
        ),
        UserProfileShort(
            label: "Laura Schools",
            description: "Age 31 | Concord NH",
            image: UIImage(
                named: "images/profiles/laura.png"
            )!
        ),
        UserProfileShort(
            label: "Julia Schools",
            description: "Age 6 | Concord NH",
            image: UIImage(
                named: "images/profiles/julia.png"
            )!
        ),
        UserProfileShort(
            label: "Penny Schools",
            description: "Age 4 | Concord NH",
            image: UIImage(
                named: "images/profiles/penny.png"
            )!
        ),
        UserProfileShort(
            label: "Declan Schools",
            description: "Age 2 | Concord NH",
            image: UIImage(
                named: "images/profiles/declan.png"
            )!
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.topItem?.title = category?.label
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ActivityCell(userProfileShort: data[indexPath.item])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedUserProfile = data[indexPath.item]
        //performSegue(withIdentifier: "ActivityToProfile", sender: nil)
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
