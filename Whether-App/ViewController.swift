//
//  ViewController.swift
//  Whether-App
//
//  Created by Jacob Tassinari on 11/14/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    let latitude = 12.23
    let longitude = 23.54
    ApiManger.getWhether(at: (latitude, longitude))
    }
}

