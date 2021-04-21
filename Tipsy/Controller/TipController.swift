import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountField: UITextField!
    
    @IBOutlet weak var button_0_Percent: UIButton!
    @IBOutlet weak var button_10_Percent: UIButton!
    @IBOutlet weak var button_20_Percent: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitStepper: UIStepper!
    
    let calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func personsChanged(_ sender: UIStepper) {
        splitLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let amountInFloat = Float(amountField.text!)!
        
        var tipPercent = 0
        
        if button_0_Percent.isSelected {
            tipPercent = 0
        }
        else if button_10_Percent.isSelected {
            tipPercent = 10
        }
        
        else {
            tipPercent = 20
        }
        
        calculatorBrain.calculateAmount(billAmount: amountInFloat, numberOfPersons: Int(splitStepper.value), tipPercentage: tipPercent)
        
        performSegue(withIdentifier: "toResult", sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! ResultController
        
        destinationVC.amount = calculatorBrain.getAmount()
        destinationVC.message = calculatorBrain.getMessage()
        
    }
    
    
    @IBAction func tipButtonPressed(_ sender: UIButton) {
        
        button_0_Percent.isSelected = false
        button_10_Percent.isSelected = false
        button_20_Percent.isSelected = false
        
        sender.isSelected = true

    }
    
    
    

}


