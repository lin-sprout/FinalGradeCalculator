//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by Lin LaMonte on 3/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var currentGradeLabel: UILabel!
    
    @IBOutlet weak var desiredGradeLabel: UILabel!
    
    @IBOutlet weak var examWeightLabel: UILabel!
    
    @IBOutlet weak var calculatedGradeResultLabel: UILabel!
    
    @IBOutlet weak var currentGradeInputTxt: UITextField!
    
    @IBOutlet weak var desiredGradeInputTxt: UITextField!
    
    @IBOutlet weak var examWeightTxt: UITextField!
    
    
    var dataCollectA: String = ""
    var dataCollectB: String = ""
    var dataCollectC: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    
    @IBAction func calculateButton(_ sender: Any) {
        
        dataCollectA = currentGradeInputTxt.text ?? ""
        dataCollectB = desiredGradeInputTxt.text ?? ""
        dataCollectC = examWeightTxt.text ?? ""
        
    var currentGrade = Int(dataCollectA) ?? 0
    var desiredGrade = Int(dataCollectB) ?? 0
    var examWeight = Int(dataCollectC) ?? 0
    var finalGrade = ((desiredGrade/100) - ((1 - (examWeight/100)) * currentGrade/100)) / examWeight
  //  var urGrade = finalGrade * 100
        
        calculatedGradeResultLabel.text = "\(finalGrade)"

        //print (urGrade)
        print (currentGrade)
        print (desiredGrade)
        print (examWeight)
        print (finalGrade)
        
        
        // var finalGrade1 = 1 - examWeight
    //var finalGrade2 = finalGrade1 * currentGrade
   // var finalGrade3 = desiredGrade - finalGrade2
    //var finalFinalGrade = finalGrade3 / examWeight
   // calculatedGradeResultLabel.text = " \(finalFinalGrade)" //(finalFinalGrade)
        
        
        
        
        //something like finalexam divided by 100 than take remainder n maybe subtract desired grade from remain n add to current grade
        //
        
        
    }
    
    
    
    
}

