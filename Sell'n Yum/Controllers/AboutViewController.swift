//
//  AboutViewController.swift
//  Sell'n Yum
//
//  Created by Jonathan Durieu on 12/02/16.
//  Copyright © 2016 Jonathan Durieu. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var LabelVersion: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        LabelVersion.text = "V \(version())"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func version() -> String {
        let dictionary = NSBundle.mainBundle().infoDictionary!
        let version = dictionary["CFBundleShortVersionString"] as! String
        let build = dictionary["CFBundleVersion"] as! String
        return "\(version) build \(build)"
    }

}
