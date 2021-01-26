//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyNumber = 0
    
    let example = [
        Story(title: "Sup then?", choice1: "Sup now?", choice2: "Now what?"),
        Story(title: "You see a tiger", choice1: "Run", choice2: "Hide"),
        Story(title: "Am I right?", choice1: "Yes", choice2: "No")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUi()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if storyNumber + 1 < example.count {
            storyNumber += 1
            updateUi()
        }
        
    }
    
    func updateUi() {
        storyLabel.text = example[storyNumber].title
        choice1Button.setTitle(example[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(example[storyNumber].choice2, for: .normal)
    }
    
}

