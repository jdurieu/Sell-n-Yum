//
//  CategoryDetailViewController.swift
//  Sell'n Yum
//
//  Created by Jonathan Durieu on 12/02/16.
//  Copyright © 2016 Jonathan Durieu. All rights reserved.
//

import UIKit

class CategoryDetailViewController: UIViewController {

    var allMealsFromCategory:[Meal]!
    var CategoryName:String!
    let cellIdentifier = "CategoryDetailCell"

    @IBOutlet weak var CategoryDetailTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = CategoryName

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMealsFromCategory.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let categoryCell = CategoryDetailTableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        let category = allMealsFromCategory[indexPath.row]
        categoryCell.textLabel?.text = category.name

        return categoryCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let selectedIndexPath = CategoryDetailTableView.indexPathForSelectedRow {
            
            let row = selectedIndexPath.row
            let segueMeal = allMealsFromCategory[row]
            let destinationViewController = segue.destinationViewController as! MealDetailViewController
            destinationViewController.meal = segueMeal
            CategoryDetailTableView.deselectRowAtIndexPath(selectedIndexPath, animated: true)
        }
    

}
}