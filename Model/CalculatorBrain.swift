import UIKit
class CalculatorBrain {
    let amountDetails = Amount(totalAmount: 0, amountMessage: "")
    
    func calculateAmount(billAmount : Float , numberOfPersons : Int , tipPercentage : Int ) {
        
        
        let amountWithTip = billAmount * Float(100 + tipPercentage) / 100.0
        
        amountDetails.totalAmount = amountWithTip / Float(numberOfPersons)
        
        print(amountWithTip)
        
        amountDetails.amountMessage = "\(billAmount) split into \(numberOfPersons) with \(tipPercentage)% tip."
    }
    
    func getAmount() -> String {
        return "\(amountDetails.totalAmount)"
    }
    
    func getMessage() -> String {
        return amountDetails.amountMessage
    }
}
