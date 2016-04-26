//
//  MealDetailViewController.swift
//  Sell'n Yum
//
//  Created by Jonathan Durieu on 12/02/16.
//  Copyright © 2016 Jonathan Durieu. All rights reserved.
//

import UIKit


class MealDetailViewController: UIViewController {
    @IBOutlet weak var DescriptionTextView: UITextView!
    @IBOutlet weak var PriceLabel: UILabel!


    @IBAction func OrderAction(sender: AnyObject) {
        
        let alert : UIAlertView = UIAlertView(title: "Order completed", message: "Thank You! \n Your Order Has Been successfully completed. \n Have a good meal!",       delegate: nil, cancelButtonTitle: "Ok")
        
        alert.show()
        
        
    }
    var meal:Meal!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title =  meal.name
        
        PriceLabel.text = "\(meal.price.description) €"
        DescriptionTextView.text = meal.description

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
