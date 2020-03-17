//
//  ViewController.swift
//  Bingebot
//
//  Created by Alexander on 3/17/20.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingebotSpokenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowBtn: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }
    
    func updateShowsLabel() {
        showsLabel.text = shows.joined(separator: ", ")
    }
    @IBAction func randomBingeShowBtnWasPressed(_ sender: Any) {
        randomShowLabel.text = shows.randomElement()
        bingebotSpokenLabel.isHidden = false
        randomShowLabel.isHidden = false
    }
    
    @IBAction func addShowBtnWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else { return }
        
        if showName != "" {
            shows.append(showName)
            
            updateShowsLabel()
            addShowTextField.text = ""
            showsStackView.isHidden = false
            
            if shows.count > 1 {
                randomShowStackView.isHidden = false
                bingebotSpokenLabel.isHidden = true
                randomShowLabel.isHidden = true
            }
        }
    }
    


}

