//
//  TopMealsViewController.swift
//  Sell'n Yum
//
//  Created by Jonathan Durieu on 12/02/16.
//  Copyright © 2016 Jonathan Durieu. All rights reserved.
//

import UIKit

class TopMealsViewController: UIViewController {
    
    @IBOutlet weak var TopMealsTableView: UITableView!
    
    var allMeals = [Meal]()
    let cellIdentifier = "MealCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        allMeals = ModelGenerator.allTopMeals()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMeals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let mealCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        let meal = allMeals[indexPath.row]
        mealCell.textLabel?.text = meal.name
        return mealCell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let selectedIndexPath = TopMealsTableView.indexPathForSelectedRow {
            
            let row = selectedIndexPath.row
            let segueMeal = allMeals[row]
            let destinationViewController = segue.destinationViewController as! MealDetailViewController
            destinationViewController.meal = segueMeal
            TopMealsTableView.deselectRowAtIndexPath(selectedIndexPath, animated: true)
        }

        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
