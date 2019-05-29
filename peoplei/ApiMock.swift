//
//  Created by Andrew Schools on 5/28/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import Foundation
import UIKit

class ApiMock : ApiProtocol {
    func getUserProfiles(in category: Category) -> [UserProfile] {
        return [
            UserProfile(
                firstName: "Andrew",
                lastName: "Schools",
                age: 38,
                city: "Concord",
                sticker: "",
                image: UIImage(
                    named: "andrew"
                )!
            ),
            UserProfile(
                firstName: "Laura",
                lastName: "Schools",
                age: 31,
                city: "Concord",
                sticker: "",
                image: UIImage(
                    named: "laura"
                )!
            ),
            UserProfile(
                firstName: "Julia",
                lastName: "Schools",
                age: 6,
                city: "Concord",
                sticker: "",
                image: UIImage(
                    named: "julia"
                )!
            ),
            UserProfile(
                firstName: "Penny",
                lastName: "Schools",
                age: 3,
                city: "Concord",
                sticker: "",
                image: UIImage(
                    named: "penny"
                )!
            ),
            UserProfile(
                firstName: "Declan",
                lastName: "Schools",
                age: 1,
                city: "Concord",
                sticker: "",
                image: UIImage(
                    named: "declan"
                )!
            ),
        ]
    }
    
    func getCategories() -> [Category] {
        return [
            Category(
                label: "Biking (2)",
                description: "Biking",
                image: UIImage(
                    named: "biking"
                )!
            ),
            Category(
                label: "Bowling",
                description: "Bowling",
                image: UIImage(
                    named: "bowling"
                )!
            ),
            Category(
                label: "Camping",
                description: "Camping",
                image: UIImage(
                    named: "camping"
                )!
            ),
            Category(
                label: "Cycling (5)",
                description: "Cycling",
                image: UIImage(
                    named: "cycling"
                )!
            ),
            Category(
                label: "Dancing",
                description: "Dancing",
                image: UIImage(
                    named: "dancing"
                )!
            ),
            Category(
                label: "Drinking",
                description: "Drinking",
                image: UIImage(
                    named: "drinking"
                )!
            ),
            Category(
                label: "Exercising (2)",
                description: "Exercising",
                image: UIImage(
                    named: "exercising"
                )!
            ),
            Category(
                label: "Gaming",
                description: "Gaming",
                image: UIImage(
                    named: "gaming"
                )!
            ),
            Category(
                label: "Golfing",
                description: "Golfing",
                image: UIImage(
                    named: "golfing"
                )!
            ),
            Category(
                label: "Hiking (1)",
                description: "Hiking",
                image: UIImage(
                    named: "hiking"
                )!
            ),
            Category(
                label: "Kissing",
                description: "Kissing",
                image: UIImage(
                    named: "kissing"
                )!
            ),
            Category(
                label: "Movie",
                description: "Movie",
                image: UIImage(
                    named: "movie"
                )!
            ),
            Category(
                label: "Netflix",
                description: "Netflix",
                image: UIImage(
                    named: "netflix"
                )!
            ),
            Category(
                label: "Playground",
                description: "Playground",
                image: UIImage(
                    named: "playground"
                )!
            ),
            Category(
                label: "Running (3)",
                description: "Running",
                image: UIImage(
                    named: "running"
                )!
            ),
            Category(
                label: "Talking",
                description: "Talking",
                image: UIImage(
                    named: "talking"
                )!
            ),
            Category(
                label: "Tennis (2)",
                description: "Tennis",
                image: UIImage(
                    named: "tennis"
                )!
            ),
            Category(
                label: "Travel",
                description: "Travel",
                image: UIImage(
                    named: "travel"
                )!
            ),
            Category(
                label: "Walking (2)",
                description: "Walking",
                image: UIImage(
                    named: "walking"
                )!
            )
        ]
    }
}
