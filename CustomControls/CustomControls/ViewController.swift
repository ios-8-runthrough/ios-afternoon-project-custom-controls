//
//  ViewController.swift
//  CustomControls
//
//  Created by Alex Shillingford on 8/13/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func updateRating(_ ratingControl: CustomControl) {
        self.title = "User Rating: N stars"
    }
    
}

