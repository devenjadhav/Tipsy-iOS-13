import UIKit

class ResultController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    var amount : String = ""
    var message : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = amount
        messageLabel.text = message

    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
