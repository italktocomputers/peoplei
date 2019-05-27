//
//  ViewController.swift
//  peoplei
//
//  Created by Andrew Schools on 5/25/19.
//  Copyright © 2019 Andrew Schools. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var selectedCategory: Category? = nil
    var data: [Category] = [
        Category(
            label: "Biking (2)",
            description: "Biking",
            image: UIImage(
                named: "images/biking.png"
            )!
        ),
        Category(
            label: "Bowling",
            description: "Bowling",
            image: UIImage(
                named: "images/bowling.png"
            )!
        ),
        Category(
            label: "Camping",
            description: "Camping",
            image: UIImage(
                named: "images/camping.png"
            )!
        ),
        Category(
            label: "Cycling (5)",
            description: "Cycling",
            image: UIImage(
                named: "images/cycling.png"
            )!
        ),
        Category(
            label: "Dancing",
            description: "Dancing",
            image: UIImage(
                named: "images/dancing.png"
            )!
        ),
        Category(
            label: "Drinking",
            description: "Drinking",
            image: UIImage(
                named: "images/drinking.png"
            )!
        ),
        Category(
            label: "Exercising (2)",
            description: "Exercising",
            image: UIImage(
                named: "images/exercising.png"
            )!
        ),
        Category(
            label: "Gaming",
            description: "Gaming",
            image: UIImage(
                named: "images/gaming.png"
            )!
        ),
        Category(
            label: "Golfing",
            description: "Golfing",
            image: UIImage(
                named: "images/golfing.png"
            )!
        ),
        Category(
            label: "Hiking (1)",
            description: "Hiking",
            image: UIImage(
                named: "images/hiking.png"
            )!
        ),
        Category(
            label: "Kissing",
            description: "Kissing",
            image: UIImage(
                named: "images/kissing.png"
            )!
        ),
        Category(
            label: "Movie",
            description: "Movie",
            image: UIImage(
                named: "images/movie.png"
            )!
        ),
        Category(
            label: "Netflix",
            description: "Netflix",
            image: UIImage(
                named: "images/netflix.png"
            )!
        ),
        Category(
            label: "Playground",
            description: "Playground",
            image: UIImage(
                named: "images/playground.png"
            )!
        ),
        Category(
            label: "Running (3)",
            description: "Running",
            image: UIImage(
                named: "images/running.png"
            )!
        ),
        Category(
            label: "Talking",
            description: "Talking",
            image: UIImage(
                named: "images/talking.png"
            )!
        ),
        Category(
            label: "Tennis (2)",
            description: "Tennis",
            image: UIImage(
                named: "images/tennis.png"
            )!
        ),
        Category(
            label: "Travel",
            description: "Travel",
            image: UIImage(
                named: "images/travel.png"
            )!
        ),
        Category(
            label: "Walking (2)",
            description: "Walking",
            image: UIImage(
                named: "images/walking.png"
            )!
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return CategoryCell(category: data[indexPath.item])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCategory = data[indexPath.item]
        performSegue(withIdentifier: "categoryToActivity", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let activityViewController = segue.destination as! ActivityViewController
        activityViewController.category = selectedCategory!
    }
}

