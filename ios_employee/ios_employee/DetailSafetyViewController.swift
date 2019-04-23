//
//  DetailSafetyViewController.swift
//  ios_employee
//
//  Created by Braelyn Chen on 3/22/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class DetailSafetyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var topic = ""
    
    var generalImageArray = [UIImage(named: "precautions"), UIImage(named: "teameffort"), UIImage(named: "climbing"), UIImage(named: "tools"), UIImage(named: "fire"), UIImage(named: "gearup")]
    var generalTitleArray = [" General Precautions", " Safety Is A Team Effort", " Lifting And Climbing Safety", " Tools And Machinery Safety", " Beware Of Fire Hazards", " Gearing Up For Safety" ]
    var healthImageArray = [UIImage(named: "diet"), UIImage(named: "fatigue"), UIImage(named: "healthtips")]
    var healthTitleArray = [" Healthy Workplace Dieting", " Overcoming Workplace Fatigue", " Other Employee Health Tips"]
    var orientationImageArray = [UIImage(named: "housekeeping"), UIImage(named: "lifting"), UIImage(named: "powertool"), UIImage(named: "ppe")]
    var orientationTitleArray = [" Safety Housekeeping Tips", " Safe Lifting And Carrying", " Hand And Power Tool Safety", " Personal Protective Equipment Safety"]
    var meetingImageArray = [UIImage(named: "beforemeeting"), UIImage(named: "duringmeeting"), UIImage(named: "othertips")]
    var meetingTitleArray = [" Before You Begin The Meeting", " Begin The Meeting", "Other Tips"]
    
    var generalSafety = ["Your safety is your personal responsibility.\n\nAlways follow the correct procedures.\n\nNever take shortcuts.\n\nTake responsibility and clean up if you made a mess.\n\nClean and organize your workspace.\n\nEnsure a clear and easy route to emergency exits and equipment.\n\nBe alert and awake on the job.\n\nBe attentive at all times to your work surroundings.\n\n",
                         "Educate everyone in the workplace about the safety requirements and consider posting a list of workplace safety tips. A workplace safety training will help them reduce or eliminate injuries and illnesses from occurring in the workplace.\n\nAlways keep the communication lines open with your co-workers, employers, or employees in order to promote and maintain a safe environment.\n\nImmediately notify others of any (new or old) hazards that you perceive.\n\nBe alert to hazards that could affect anyone— not just yourself; in this respect, maintain a team mentality at all times.\n\n",
                         "Always use both hands when lifting a heavy or cumbersome object.\n\nAdopt a proper stance for lifting: put the strain on your legs, not your back (crouch at your feet, keep your back straight, and don’t bend at the waist).\n\nTest the weight before you lift something up completely; it might be too late if you realize a few seconds later that it’s too heavy or cumbersome for you.\n\nAn easy way to do this is to nudge it with your foot first.\n\nConsider a back brace if the work is heavy or you have a sensitive back.\n\n",
                         "Use machinery only if you’re authorized, trained, and alert.\n\nAlways use the appropriate tool for the respective task.\n\nOrganize your tools and don’t be careless; someone could easily slip or get hit due to a misplaced object.\n\nAlways ensure that the operator of a machine sees you; never approach from behind or from a blind side.\n\n",
                         "Come up with a fire emergency plan; ensure that everyone knows and understands it.\n\nPractice fire drills.\n\nAvoid “power strips” which can ignite a fire if overloaded.\n\nVentilation is critical, especially if dealing with fumes and chemicals.\n\nGood ventilation helps to reduce the toxins in the air, and thus to eliminate highly flammable vapors.\n\nIn case of fire, know what has fed the fire.\n\n",
                         "Always wear appropriate clothing and shoes respective to your job.\n\nFire extinguishers must be available and readily attainable.\n\nFirst aid kits must be available and readily attainable.\n\nNever remove or tamper with safety devices.\n\nUse a back brace if you’re lifting heavy objects or you’ve got a sensitive back.\n\nA hard hat will protect you if there’s a risk of falling objects."]
    
    var health = ["Start your day by eating a wholesome breakfast\n\t\u{2022}Breakfast should be high in protein or fat to sustain your energy until lunch\n\t\u{2022}Avoid a breakfast high in sugar, the calorie intake from sugar tends to burn quickly causing a crash later on\n\t\u{2022}Don’t over-do the coffee- caffeine can also cause a crash later on\n\nSnacking should be high in protein or should be raw foods\n\t\u{2022}Have a high protein snack like nuts or trail mix if you must snack during the day\n\t\u{2022}Avoid greasy, sugary, overly salty, or fried snacks such as chips- these can cause fatigue. Fight the craving!\n\n",
                  "Due to natural Cicadian Rhythms, adults typically experience bouts of fatigue during 10am-11am and 2pm-3pm.\n\nAvoid caffeine during these times, it might be tempting but it’s a temporary fix and can cause a crash later on. Also, avoid filling these periods with unnecessary snacking\n\nGo for a walk, sit outside or move around somehow\n\t\u{2022}Especially if you have a sedentary desk job, it’s unbelievably important to get up and move around throughout your workday\n\t\u{2022}Step away from the computer. It might be tempting to pop over to social media but get your eyes away from that computer screen for a bit and refocus.\n",
                  "Know the in’s and out’s of workplace ergonomics so your job doesn’t take a toll on your body.\n\t\u{2022}Pay special attention to areas of your body where there is repetitive motion or stress from job functions\n\nGet plenty of rest each night. Adults should get AT LEAST 8 hours of uninterrupted sleep. If you don’t get enough sleep because your thoughts are buzzing, consider talking to a doctor about how you can get plenty of rest.\n\t\u{2022}You’re likely already in a sleeping routine that either works, or does not work for you. Make sure it works- sleep is important. It’s your brain re-setting itself to take on the mental activities of the day ahead. Treat your brain right by allowing it to get the rest it needs.\n\n"]
    
    var orientation = ["Keep file cabinets closed and secure\n\t\u{2022}Do not stack items on top of file cabinets\n\t\u{2022}Ensure that weight is evenly distributed throughout each drawer\n\t\u{2022}Keep file cabinet drawers closed\n\nPrevent slips, trips, and falls\n\nRemove any empty boxes or items stacked in a way that they may potentially injury someone\n\nKeeps wires, cords, etc. bunched and out of the way of foot traffic\n\nImmediate clean up spills, water, or anything else that could cause a slip\n\n",
                       "Keep a wide base of support.\n\t\u{2022}Your feet should be shoulder-width apart, with one foot slightly ahead of the other (karate stance).\n\nSquat down,bending at the hips and knees only.\n\nKeep good posture.\n\t\u{2022}Look straight ahead, and keep your back straight, your chest out, and your shoulders back.\n\t\u{2022}This helps keep your upper back straight while having a slight arch in your lower back.\n\nSlowly lift by straightening your hips and knees (not your back).\n\nHold the load as close to your body as possible, at the level of your belly button.\n\n",
                       "Buy quality tools.\n\t\u{2022}Many tools, including cutters and hammers, should be made of steel and should be heat-treated.\n\t\u{2022}Regularly inspect tools to make sure they are in good shape and fit for use.\n\t\u{2022}Be sure to maintain your tools by performing regular maintenance, like grinding or sharpening.\n\t\u{2022}Always follow the manufacturer’s instructions.\n\nDress for the job by avoiding loose clothing or articles that can get caught in a tool’s moving parts, like jewelry.\n\nUse the right tool for the job. In other words, don’t try to use a wrench as a hammer.\n\n",
                       "Understand the role of your personal protective equipment (PPE).\n\t\u{2022}Safety glasses protect a worker’s eyes from contact by objects and debris. Wraparound goggles provide side protection and some designs will reduce liquid and vapor penetration.\n\t\u{2022}Laboratory coats, FR apparel, and secondary disposable FR wear offer protection against chemical spills, splashes and arc flash hazards.\n\nKnow the situations when PPE should be used.\n\t\u{2022}Following OSHA guidelines is the recommended action for deciding what PPE should be used and when it is required.\n"]
    
    var meeting = ["Does this topic relate to your workplace?\n\t\u{2022}If not, choose another topic.\n\t\u{2022}Topics should be relevant to worker’s daily job activities so they can apply it\n\t\u{2022}Repeat safety meetings on topics that are considered more hazardous than other\n\t\u{2022}These can be annually, semi-annually, quarterly, monthly, etc.\n\nLook up your company rules or policies about this topic.\n\t\u{2022}Incorporating your company policies into your safety meeting topics can help employees refer back to the policy later\n\t\u{2022}Have company policies about specific/relevant topics\n",
                   "Read Section I to everyone at the meeting.\n\nAsk if anyone has a personal story about this topic.\n\nDiscuss any problems at your workplace related to this topic.\n\nAsk: \"What can we do to solve our problems with (this topic)?\"\n\nAsk: “Have you had any experience with (this topic) here or at other places you’ve worked that might help us work safer here?”\n\nIf the company has rules or procedures around this topic, discuss them now\n\n",
                   "Keep the meeting fun and engaging\n\t\u{2022}Don’t be afraid to show a video clip or funny safety meeting opener to catch attention and drive engagement\n\nIf it’s a more serious topic, use graphic pictures or video clips of injuries to resonate with employees.\n\t\u{2022}Real life examples always help deliver your message\n\t\u{2022}If you’re going to use graphic or gory images of worker injuries, be sure to warn your audience first!\n\nHave your team come up with a safety slogan"]
    
    private var hiddenCells: [DetailSafetyCollectionViewCell] = []
    private var expandedCell: DetailSafetyCollectionViewCell?
    private var isStatusBarHidden = false
    
    override var prefersStatusBarHidden: Bool {
        return isStatusBarHidden
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch topic {
        case "General Workplace Safety":
            return generalImageArray.count
        case "Employee Health Tips":
            return healthImageArray.count
        case "Safety Orientation Tips":
            return orientationImageArray.count
        case "Safety Meeting Tips":
            return meetingImageArray.count
        default:
            print("no topic matches")
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailSafetyCollectionViewCell", for: indexPath) as! DetailSafetyCollectionViewCell
        switch topic {
        case "General Workplace Safety":
            cell.DetailSafetyImage.image = generalImageArray[indexPath.row]
            cell.DetailSafetyLabel.text = generalTitleArray[indexPath.row]
            cell.ActualTipsLabel.text = generalSafety[indexPath.row]
        case "Employee Health Tips":
            cell.DetailSafetyImage.image = healthImageArray[indexPath.row]
            cell.DetailSafetyLabel.text = healthTitleArray[indexPath.row]
            cell.ActualTipsLabel.text = health[indexPath.row]
        case "Safety Orientation Tips":
            cell.DetailSafetyImage.image = orientationImageArray[indexPath.row]
            cell.DetailSafetyLabel.text = orientationTitleArray[indexPath.row]
            cell.ActualTipsLabel.text = orientation[indexPath.row]
        case "Safety Meeting Tips":
            cell.DetailSafetyImage.image = meetingImageArray[indexPath.row]
            cell.DetailSafetyLabel.text = meetingTitleArray[indexPath.row]
            cell.ActualTipsLabel.text = meeting[indexPath.row]
        default:
            print("no topic matches")
        }
//        cell.contentView.backgroundColor = .white
//        cell.contentView.layer.cornerRadius = 10
//        cell.contentView.layer.masksToBounds = true
//
//        cell.layer.masksToBounds = false
//        cell.layer.shadowColor = UIColor.gray.cgColor
//        cell.layer.shadowOpacity = 0.6
//        cell.layer.shadowOffset = CGSize(width: 0, height: 0)
//        cell.layer.shadowRadius = cell.contentView.layer.cornerRadius
        
        //        cell.contentView.layer.cornerRadius = 2.0
        //        cell.contentView.layer.borderWidth = 1.0
        //        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        //        cell.contentView.layer.masksToBounds = true
        //
        //        cell.layer.shadowColor = UIColor.lightGray.cgColor
        //        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        //        cell.layer.shadowRadius = 2.0
        //        cell.layer.shadowOpacity = 0.2
        //        cell.layer.masksToBounds = false
        //        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        DetailTitle.text = topic
        //        DetailContent.text = content
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("called!")
        if collectionView.contentOffset.y < 0 ||
            collectionView.contentOffset.y > collectionView.contentSize.height - collectionView.frame.height {
            return
        }
        
        
        let dampingRatio: CGFloat = 0.8
        let initialVelocity: CGVector = CGVector.zero
        let springParameters: UISpringTimingParameters = UISpringTimingParameters(dampingRatio: dampingRatio, initialVelocity: initialVelocity)
        let animator = UIViewPropertyAnimator(duration: 0.5, timingParameters: springParameters)
        
        
        self.view.isUserInteractionEnabled = false
        
        if let selectedCell = expandedCell {
            print("in expandedcell")
            isStatusBarHidden = false
            
            animator.addAnimations {
                selectedCell.collapse()
                
                for cell in self.hiddenCells {
                    cell.show()
                }
            }
            
            animator.addCompletion { _ in
                collectionView.isScrollEnabled = true
                
                self.expandedCell = nil
                self.hiddenCells.removeAll()
            }
        } else {
            print("not in expandedcell")
            isStatusBarHidden = true
            
            collectionView.isScrollEnabled = false
            
            let selectedCell = collectionView.cellForItem(at: indexPath)! as! DetailSafetyCollectionViewCell
            let frameOfSelectedCell = selectedCell.frame
            
            expandedCell = selectedCell
            hiddenCells = collectionView.visibleCells.map { $0 as! DetailSafetyCollectionViewCell }.filter { $0 != selectedCell }
            
            animator.addAnimations {
                selectedCell.expand(in: collectionView)
                
                for cell in self.hiddenCells {
                    cell.hide(in: collectionView, frameOfSelectedCell: frameOfSelectedCell)
                }
            }
        }
        
        
        animator.addAnimations {
            self.setNeedsStatusBarAppearanceUpdate()
        }
        
        animator.addCompletion { _ in
            self.view.isUserInteractionEnabled = true
        }
        
        animator.startAnimation()
    }
//                let vc: InfoViewController = (storyboard?.instantiateViewController(withIdentifier:"InfoViewController")as! InfoViewController)
//                vc.category = topic
//                vc.index = indexPath.row
//                self.present(vc, animated: true, completion: nil)
    
}
    
   
    


//extension DetailSafetyViewController : UIViewControllerTransitioningDelegate {
//    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
//        return InfoViewController(presentedViewController: presented, presenting: presenting)
//    }
//}

