//
//  ViewController.swift
//  Counter
//
//  Created by arthur on 11.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didButtonTap(_ sender: Any) {
        count += 1
        counterLabel.text = "\(count)"
        print("You tapped on button \(count) times")
        
    }
    
}

