//
//  FirstViewController.swift
//  Prevwork
//
//  Created by Angela He on 2/18/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {


    @IBOutlet weak var username: LoginTextField!
    
    @IBOutlet weak var confirmPassword: LoginTextField!
    
    @IBOutlet weak var password: LoginTextField!
    @IBOutlet weak var alert: UILabel!
    
    @IBAction func register(_ sender: Any) {
        var success = false
        if (password.text == nil || password.text!.count < 8){
            alert.text = "Password should be longer than 8"
            alert.isHidden = false
        } else if (password.text != confirmPassword.text){
            
            alert.text = "Password doesn't match"
            alert.isHidden = false
        } else{
            alert.isHidden = true
            // convert the input fields to json data
//            let params : [String: String] = ["username": username.text!, "password": password.text!]
//            guard let jsonData = try? JSONSerialization.data(withJSONObject: params, options: []) else {
//                print("Error: cannot convert to JSON object")
//                return
//            }
//
//            guard let url = URL(string: "http://127.0.0.1:3008/signup1") else {
//                print("Error url!!!!!!!")
//                return
//            }
//            var request = URLRequest(url: url)
//            request.httpMethod = "POST"
//            request.httpBody = jsonData
//            var headers = request.allHTTPHeaderFields ?? [:]
//            headers["Content-Type"] = "application/json"
//            request.allHTTPHeaderFields = headers
//            print("HttpBody!!!!!!")
//            print(String(data: request.httpBody!, encoding: String.Encoding.utf8)!)
//            let config = URLSessionConfiguration.default
//            let session = URLSession(configuration: config)
//            let semophore = DispatchSemaphore(value: 0)
//            session.dataTask(with: request) {(data, res, err) in
//                if let res = res as? HTTPURLResponse{
//                    if (res.statusCode == 404) {
//                        // Username already exist
//                        print("Username already exists")
//                        DispatchQueue.main.async {
//                            self.alert.text = "Username already exists"
//                            self.alert.isHidden = false
//                        }
//                    } else {
//                        // Signup successful
//                        print("Signup successful")
//                        let standard = UserDefaults.standard
//                        standard.set(params["username"], forKey: "username")
//                        standard.set(params["password"], forKey: "password")
//                        standard.set("N/A", forKey: "companyName")
//                        standard.set("N/A", forKey: "size")
//                        standard.set("N/A", forKey: "industry")
//                        standard.set("N/A", forKey: "location")
//                        standard.set("N/A", forKey: "founded")
//
//                        success = true
//
//                    }
//                } else{
//                    print("Error response!!!!!!")
//                }
//                if let data = data {
//                    print(data)
//                } else {
//                    print("Error Data!!!!!!")
//                }
//                semophore.signal()
//            }.resume()
//            semophore.wait()
//            let storyboard e//            var next = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
//            self.navigationController?.pushViewController(next, animated: false)
            
            print("Signup successful")
            let standard = UserDefaults.standard
            standard.set(username.text!, forKey: "username")
            standard.set(password.text!, forKey: "password")
            standard.set("N/A", forKey: "companyName")
            standard.set("N/A", forKey: "size")
            standard.set("N/A", forKey: "industry")
            standard.set("N/A", forKey: "location")
            standard.set("N/A", forKey: "founded")
            
            success = true
        }
        if (success){
            
//            let profile = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileEditorViewController") as! ProfileEditorViewController
//            self.addChild(profile)
//            profile.view.frame = self.view.frame
//            self.view.addSubview(profile.view)
//            profile.didMove(toParent: self)
            
            self.performSegue(withIdentifier: "showSignin", sender: self)
            

        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alert.isHidden = true
        alert.textColor = UIColor.red
    }


}

