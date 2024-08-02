//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Molina Espinosa, Pedro on 1/8/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let colors = [ #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0.5921568627, green: 0.0862745098, blue: 0.1058823529, alpha: 1) ]
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more snacks", color: colors[0])
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Don't eat", color: colors[1])
            
        }else{
            bmi = BMI(value: bmiValue, advice: "I said stop eating!", color: colors[2])
            
        }
        
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "There is no addvice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
    func getBMIValue() -> String {
        
        return String(format: "%.1f", bmi?.value ?? 0.0)
        
    }
}
