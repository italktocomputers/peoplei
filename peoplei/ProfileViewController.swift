//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController : UIViewController {
    var profile: UserProfile? = nil
    var category: Category? = nil
    var api: ApiProtocol? = nil
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.topItem?.title = profile!.firstName + " " + profile!.lastName
        profileImage.image = profile?.image
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func backToActivity(_ sender: Any) {
        performSegue(withIdentifier: "ProfileToActivity", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let activityViewController = segue.destination as! ActivityViewController
        activityViewController.category = category!
        activityViewController.api = api
    }
}
