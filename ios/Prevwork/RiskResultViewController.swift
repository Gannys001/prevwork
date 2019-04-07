//
//  RiskResultViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/21/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class RiskResultViewController: UIViewController {

    // declare the 3D array
    
    @IBOutlet weak var EMRLabel: UILabel!
    @IBOutlet weak var probLabel: UILabel!
    var gender: Int!
    var age: Int!
    var industry: Int!
    
    var totlist = [[], [["Men", 103.6], ["Women", 99.9]], [["Under 14", 0.0], ["14 to 15", 0.0], ["16 to 19", 125.7], ["20 to 24", 110.8], ["25 to 34", 93.0], ["35 to 44", 92.4], ["45 to 54", 110.2], ["55 to 64", 111.6], ["65 and over", 104.8]], [["Management, business, financial", 0.0], ["Computer, engineering, and science", 0.0], ["Education, legal, community service, arts, and media", 0.0], ["Healthcare practitioners and technical", 123.9], ["Service", 0.0], ["Sales and related", 57.1], ["Office and administrative support", 60.6], ["Farming, fishing, and forestry", 136.7], ["Construction and extraction", 246.4], ["Installation, maintenance, and repair", 213.2], ["Production", 138.8], ["Transportation and material moving", 224.9]], [["Cases involving 1 day", 11.8], ["Cases involving 2 days", 9.1], ["Cases involving 3-5 days", 16.4], ["Cases involving 6-10 days", 10.6], ["Cases involving 11-20 days", 10.9], ["Cases involving 21-30 days", 8.0], ["Cases involving 31 or more days", 35.3], ["Median days away from work(3)", 13.0]], [["Goods producing industries(4)", 123.0], ["Natural resources and mining(4),(5)", 139.5], ["Agriculture, forestry, fishing and hunting(4)", 146.7], ["Mining(5)", 22.8], ["Construction", 175.7], ["Manufacturing", 88.0], ["Service providing industries", 96.5], ["Trade, Transportation and utilities(6)", 124.4], ["Wholesale trade", 90.0], ["Retail trade", 113.2], ["Transportation and warehousing(6)", 211.1], ["Utilities", 38.7], ["Information", 54.6], ["Financial activities", 61.7], ["Finance and insurance", 25.9], ["Real estate and rental and leasing", 0.0], ["Professional and business services", 51.3], ["Professional, scientific, and technical services", 24.6], ["Management of companies and enterprises", 49.3], ["Administrative and support and waste management and remediation services", 99.2], ["Education and health services", 117.9], ["Educational services", 67.2], ["Health care and social assistance", 125.1], ["Leisure and hospitality", 127.6], ["Arts, entertainment, and recreation", 132.3], ["Accommodation and food services", 126.7], ["Other services", 80.4], ["Other services, except public administration", 80.4], ["Public administration", 0.0]], [["Musculoskeletal disorders", 33.3]], [["Violence and other injuries by persons or animal", 4.2], ["Intentional injury by other person", 1.8], ["Injury by person unintentional or intent unknown", 1.2], ["Animal and insect related incidents", 1.1], ["Transportation incidents", 4.1], ["Roadway incidents involving motorized land vehicles", 2.4], ["Fires, explosions", 0.1], ["Falls, slips, trips", 24.7], ["Slips, trips without fall", 4.0], ["Fall on same level", 15.3], ["Fall to lower level", 5.0], ["Exposure to harmful substances or environments", 5.2], ["Contact with object, equipment", 26.0], ["Struck by object", 15.0], ["Struck against object", 5.2], ["Caught in object, equipment, material", 3.4], ["Overexertion and bodily reaction", 36.5], ["Overexertion in lifting or lowering", 11.3], ["Repetitive motion involving microtasks", 5.9], ["All other", 1.3]], [["Fractures", 7.0], ["Sprains, strains, tears", 36.6], ["Amputations", 0.4], ["Cuts, lacerations, punctures", 10.4], ["Cuts, lacerations", 8.8], ["Punctures (except gunshot wounds)", 1.6], ["Bruises, contusions", 10.0], ["Chemical burns and corrosions", 0.2], ["Heat (thermal) burns", 1.3], ["Multiple traumatic injuries", 2.1], ["With sprains and other injuries", 1.0], ["With fractures and other injuries", 0.2], ["Soreness, pain", 12.4], ["Carpal tunnel syndrome", 1.1], ["Tendonitis", 0.6], ["All other", 20.0]], [["Chemicals, chemical products", 1.3], ["Containers", 13.3], ["Furniture, fixtures", 3.9], ["Machinery", 5.0], ["Parts and materials", 7.4], ["Person, injured or ill worker", 20.4], ["Worker motion or position", 18.9], ["Person, other than injured or ill workers", 6.4], ["Health care patient", 3.7], ["Floors, walkways, ground surfaces", 14.0], ["Handtools", 5.3], ["Ladders", 2.2], ["Vehicles", 8.4], ["Trucks", 2.0], ["Cart, dolly, hand truck--nonpowered", 1.4], ["All other", 14.6]], [["Containers, furniture, and fixtures", 0.0], ["Machinery", 0.0], ["Computers and peripheral equipment", 0.0], ["Tools, instruments, and equipment", 0.0], ["Firearms, law enforcement, and other self-defense equipment", 0.0], ["Vehicles", 0.0], ["Highway vehicle, motorized", 0.0], ["Ice, sleet, snow", 0.0], ["Liquids-nonchemical", 0.0]]];
    override func viewDidLoad() {
        super.viewDidLoad()
        var intermediate: Double!
        
        // sum probability
        var sumprob = 0.0;
        var s:String = String(format:"%Int", gender);
        intermediate = totlist[1][gender][1] as! Double;
        sumprob += intermediate;
        
        intermediate = totlist[2][age][1] as! Double;
        sumprob += intermediate
    
        intermediate = totlist[5][industry][1] as! Double;
        sumprob += intermediate;
        
        probLabel.text = String(sumprob/100);
        EMRLabel.text = String(60.96*sumprob)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
