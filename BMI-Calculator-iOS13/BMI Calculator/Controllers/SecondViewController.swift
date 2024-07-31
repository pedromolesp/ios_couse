//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Molina Espinosa, Pedro on 8/7/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        label.text = "Hello \(bmiValue)"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
