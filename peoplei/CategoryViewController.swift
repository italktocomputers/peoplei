//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var selectedCategory: Category? = nil
    var api = Api(api: ApiMock())
    var data: [Category]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = api.getCategories()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return CategoryCell(category: data![indexPath.item])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCategory = data![indexPath.item]
        performSegue(withIdentifier: "categoryToActivity", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let activityViewController = segue.destination as! ActivityViewController
        activityViewController.category = selectedCategory!
        activityViewController.api = self.api
    }
}

