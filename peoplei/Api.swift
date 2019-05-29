//
//  Created by Andrew Schools on 5/28/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation

class Api : ApiProtocol {
    var api: ApiProtocol
    
    init(api: ApiProtocol) {
        self.api = api
    }
    
    func getUserProfiles(in category: Category) -> [UserProfile] {
        return api.getUserProfiles(in: category)
    }
    
    func getCategories() -> [Category] {
        return api.getCategories()
    }
    
}
