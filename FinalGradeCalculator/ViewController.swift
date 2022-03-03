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
        
    var currentGrade = Double(dataCollectA) ?? 0
    var desiredGrade = Double(dataCollectB) ?? 0
    var examWeight1 = Double(dataCollectC) ?? 0
    var examWeight = examWeight1 / 100
    var finalGrade = ((desiredGrade/100) - ((1 - (examWeight)) * currentGrade/100)) / examWeight
    var finalFinalGrade = finalGrade * 100
        
  //  var urGrade = finalGrade * 100
        
        calculatedGradeResultLabel.text = "\(finalFinalGrade)"

        if finalFinalGrade <= 100
        {
            self.view.backgroundColor = UIColor.systemGreen
        }
        
        if finalFinalGrade > 100
        {
            self.view.backgroundColor = UIColor.systemRed
            calculatedGradeResultLabel.text = "\(finalFinalGrade)  You should ask your teacher for some Extra Credit"
        }
        
        
        
        
        
        
        
        
        
        //print (urGrade)
        //print (currentGrade)
        //print (desiredGrade)
        //print (examWeight1)
        //print (finalGrade)
        // var finalGrade1 = 1 - examWeight
    //var finalGrade2 = finalGrade1 * currentGrade
   // var finalGrade3 = desiredGrade - finalGrade2
    //var finalFinalGrade = finalGrade3 / examWeight
   // calculatedGradeResultLabel.text = " \(finalFinalGrade)" //(finalFinalGrade)
        //something like finalexam divided by 100 than take remainder n maybe subtract desired grade from remain n add to current grade
        //
        
        
    }
    
    
    
    
}

