

import UIKit

class BodyFrontViewController: UIViewController {
    
    @IBOutlet weak var face: UIButton!
    @IBOutlet weak var neck: UIButton!
    
    @IBOutlet weak var thyroid1: UIButton!
    @IBOutlet weak var thyroid2: UIButton!
    
    @IBOutlet weak var arm1: UIButton!
    @IBOutlet weak var arm2: UIButton!
    
    @IBOutlet weak var brest1: UIButton!
    @IBOutlet weak var brest2: UIButton!
    
    @IBOutlet weak var abdomen: UIButton!
    @IBOutlet weak var pelvis: UIButton!
    @IBOutlet weak var genitals: UIButton!
    
    @IBOutlet weak var thigh1: UIButton!
    @IBOutlet weak var thigh2: UIButton!
    
    @IBOutlet weak var leg1: UIButton!
    @IBOutlet weak var leg2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        face.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        face.setImage(UIImage(named:"Checkmark"), for: .selected)
        neck.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        neck.setImage(UIImage(named:"Checkmark"), for: .selected)
        thyroid1.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        thyroid1.setImage(UIImage(named:"Checkmark"), for: .selected)
        thyroid2.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        thyroid2.setImage(UIImage(named:"Checkmark"), for: .selected)
        arm1.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        arm1.setImage(UIImage(named:"Checkmark"), for: .selected)
        arm2.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        arm2.setImage(UIImage(named:"Checkmark"), for: .selected)
        brest1.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        brest1.setImage(UIImage(named:"Checkmark"), for: .selected)
        brest2.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        brest2.setImage(UIImage(named:"Checkmark"), for: .selected)
        
        abdomen.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        abdomen.setImage(UIImage(named:"Checkmark"), for: .selected)
        pelvis.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        pelvis.setImage(UIImage(named:"Checkmark"), for: .selected)
        genitals.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        genitals.setImage(UIImage(named:"Checkmark"), for: .selected)
        
        thigh1.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        thigh1.setImage(UIImage(named:"Checkmark"), for: .selected)
        thigh2.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        thigh2.setImage(UIImage(named:"Checkmark"), for: .selected)
        leg1.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        leg1.setImage(UIImage(named:"Checkmark"), for: .selected)
        leg2.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        leg2.setImage(UIImage(named:"Checkmark"), for: .selected)
        
        neck.alpha = 0.1
        thyroid1.alpha = 0.1
        thyroid2.alpha = 0.1
        face.alpha = 0.1
        arm1.alpha = 0.1
        arm2  .alpha = 0.1
        brest1.alpha = 0.1
        brest2.alpha = 0.1
        
        abdomen.alpha = 0.1
        pelvis.alpha = 0.1
        genitals.alpha = 0.1
        
        thigh1.alpha = 0.1
        thigh2.alpha = 0.1;
        leg1.alpha = 0.1
        leg2.alpha = 0.1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shoulder1Tapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
                if sender.alpha < 0.2{
                    sender.alpha = 1
                }
                else{
                    sender.alpha = 0.1
                }
            }, completion: nil)
        }
    }
    
    
}
