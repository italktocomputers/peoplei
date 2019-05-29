//
//  Created by Andrew Schools on 5/28/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation

protocol ApiProtocol {
    func getUserProfiles(in category: Category) -> [UserProfile]
    func getCategories() -> [Category]
}
