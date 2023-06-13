//
//  ViewController.swift
//  Counter
//
//  Created by arthur on 11.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var decrementButton: UIButton!
    @IBOutlet private weak var incrementButton: UIButton!
    @IBOutlet private weak var restartButton: UIButton!
    @IBOutlet private weak var infoTextView: UITextView!
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoTextView.text = "История изменений:\n"
        infoTextView.isEditable = false
        infoTextView.isScrollEnabled = true
    }
    
    @IBAction private func didIncrementButton(_ sender: Any) {
        count += 1
        counterLabel.text = "\(count)"
        infoTextView.text += "[\(Date().formatted(date: .abbreviated, time: .standard))]: +1\n"
    }
    
    @IBAction private func resetCounterButton(_ sender: Any) {
        count = 0
        counterLabel.text = "\(count)"
        infoTextView.text += "[\(Date().formatted(date: .abbreviated, time: .standard))]: значение сброшено \n"
    }
    
    @IBAction private func didDecrementButton(_ sender: Any) {
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

