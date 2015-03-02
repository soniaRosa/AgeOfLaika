//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Joao Rosa on 28/01/15.
//  Copyright (c) 2015 Sonia Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var dogAgeInHumanYearsLabel: UILabel!
    @IBOutlet weak var humanAgeInDogYearsLabel: UILabel!

    @IBOutlet weak var dogYearsTextField: UITextField!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBAction
    @IBAction func convertYearsButtonPressed(sender: UIButton) {
        
        convertDogYearsInHumanYears()
        ConvertHumanYearsInDogYears()
    }
    @IBAction func tryAgainButtonPressed(sender: UIButton) {
        cleanAndTryAgain()
    }
    
    // MARK: - Helper Functions
    func convertDogYearsInHumanYears () {
        
        let stringFromTextField = dogYearsTextField.text
        let stringConvertfromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogAgeInHumanYears: Double
        
        if stringConvertfromTextField <= 2 {
            
            realDogAgeInHumanYears = stringConvertfromTextField * 10.5
            dogAgeInHumanYearsLabel.hidden = false
        }
        else {
            
            realDogAgeInHumanYears = (10.5 * 2) + (stringConvertfromTextField - 2) * 4
            dogAgeInHumanYearsLabel.hidden = false
        }
        
        dogAgeInHumanYearsLabel.text =  " Your dog have \(realDogAgeInHumanYears) in human years"
        dogYearsTextField.resignFirstResponder()
    }
    
    func ConvertHumanYearsInDogYears () {
        let stringFromTextField = humanYearsTextField.text
        let stringConvertFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realHumangeInDogYears: Double
        
        if stringConvertFromTextField <= 21 {
            
            realHumangeInDogYears = stringConvertFromTextField / 10.5
            humanAgeInDogYearsLabel.hidden = false
        }
        else {
            realHumangeInDogYears = (21 / 10.5) + (stringConvertFromTextField - 21) / 4
            humanAgeInDogYearsLabel.hidden = false
        }
        humanAgeInDogYearsLabel.text = " You have \(realHumangeInDogYears) in dog years"
        humanYearsTextField.resignFirstResponder()
    }
    
    func cleanAndTryAgain() {
        
        dogAgeInHumanYearsLabel.hidden = true
        dogYearsTextField.text = ""
        
        humanAgeInDogYearsLabel.hidden = true
        humanYearsTextField.text = ""

    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

}

