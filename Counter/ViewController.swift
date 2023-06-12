//
//  ViewController.swift
//  Counter
//
//  Created by arthur on 11.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var infoTextView: UITextView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextView.text = "История изменений:\n"
        infoTextView.isEditable = false
        infoTextView.isScrollEnabled = true
    }
    
    @IBAction func didIncrementButton(_ sender: Any) {
        count += 1
        counterLabel.text = "\(count)"
        infoTextView.text += "[\(Date().formatted(date: .abbreviated, time: .standard))]: +1\n"
    }
    
    @IBAction func resetCounterButton(_ sender: Any) {
        count = 0
        counterLabel.text = "\(count)"
        infoTextView.text += "[\(Date().formatted(date: .abbreviated, time: .standard))]: значение сброшено \n"
    }
    
    @IBAction func didDecrementButton(_ sender: Any) {
        if count <= 0 {
            count = 0
            infoTextView.text += "[\(Date().formatted(date: .abbreviated, time: .standard))]: попытка уменьшить значение счётчика ниже 0\n"
        } else {
            count -= 1
            counterLabel.text = "\(count)"
            infoTextView.text += "[\(Date().formatted(date: .abbreviated, time: .standard))]: -1\n"
        }

    }
}

