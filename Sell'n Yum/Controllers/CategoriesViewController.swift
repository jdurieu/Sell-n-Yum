//
//  CategoriesViewController.swift
//  Sell'n Yum
//
//  Created by Jonathan Durieu on 12/02/16.
//  Copyright © 2016 Jonathan Durieu. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    @IBOutlet weak var CategoriesTableView: UITableView!
    @IBOutlet weak var CategoryLabel: UILabel!
    @IBOutlet weak var NumberOfMealsLabel: UILabel!

    var allCategories = [Category]()
    let cellIdentifier = "CategoryCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allCategories = ModelGenerator.allCategories()
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCategories.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let categoryCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as!CustomTableViewCell

        let category = allCategories[indexPath.row]
        categoryCell.CategorLabel.text = category.name
        categoryCell.NumberOfMealsLabel.text = "\(category.meals.count.description) meals"
        return categoryCell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let selectedIndexPath = CategoriesTableView.indexPathForSelectedRow {
            
            let row = selectedIndexPath.row
            let segueMeals = allCategories[row]
            let destinationViewController = segue.destinationViewController as! CategoryDetailViewController
            destinationViewController.allMealsFromCategory = segueMeals.meals
            destinationViewController.CategoryName = segueMeals.name
            
        }

}
}