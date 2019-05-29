//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class ActivityViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    var category: Category? = nil
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var statusLabel: UILabel!
    var selectedUserProfile: UserProfile? = nil
    var api: ApiProtocol? = nil
    var data: [UserProfile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.topItem?.title = category?.label
        data = api!.getUserProfiles(in: category!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ActivityCell(userProfile: data[indexPath.item])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedUserProfile = data[indexPath.item]
        performSegue(withIdentifier: "ActivityToProfile", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ActivityToProfile" {
            let profileViewController = segue.destination as! ProfileViewController
            profileViewController.profile = selectedUserProfile!
            profileViewController.category = category
            profileViewController.api = api
        }
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
