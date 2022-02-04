//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by ryan lee on 2/4/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//


import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmito1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmito1DecimalPlace
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0.48, green: 0.84, blue: 0.94, alpha: 1.00))
        }else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 0.56, green: 0.93, blue: 0.57, alpha: 1.00))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
        
        
        // bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    
}
}
