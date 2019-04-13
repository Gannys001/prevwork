import UIKit

class SigninViewController: UIViewController {
    
    @IBOutlet weak var alertLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: LoginTextField!
    @IBOutlet weak var usernameTextField: LoginTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertLabel.isHidden = true
        alertLabel.textColor = .red
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func Signin(_ sender: Any) {
        print("Sign in")
        var username = usernameTextField.text
        var password = passwordTextField.text
        
        if (username == nil) {
            alertLabel.text = "Username cannot be empty"
            alertLabel.isHidden = false
        } else if (password == nil) {
            alertLabel.text = "Password cannot be empty"
            alertLabel.isHidden = false
        } else {
            var params = ["username": username!, "password": password!]
            guard let jsonData = try? JSONSerialization.data(withJSONObject: params, options: []) else {return}
            guard let url = URL(string: "http:127.0.0.1:3008/signin1") else {return}
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.httpBody = jsonData
            var headers = request.allHTTPHeaderFields ?? [:]
            headers["Content-Type"] = "application/json"
            request.allHTTPHeaderFields = headers
            let config = URLSessionConfiguration.default
            let session = URLSession(configuration: config)
            
            session.dataTask(with: request) { (data, res, err) in
                if let res = res as? HTTPURLResponse {
                    if (res.statusCode == 404) {
                        print("Login Failed")
                        DispatchQueue.main.async {
                            self.alertLabel.text = "Login Failed. Try Again"
                            self.alertLabel.isHidden = false
                        }
                    }
                    else {
                        // Login Successful
                        print("login successful")
                        guard let json = try? JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any] else {return}
                        
                        
                        let standard = UserDefaults.standard
                        standard.set(json["companyName"], forKey: "CompanyName")
                        standard.set(json["founded"], forKey: "founded")
                        standard.set(json["industry"], forKey: "industry")
                        standard.set(json["location"], forKey: "location")
                        
                        standard.set(json["size"], forKey: "size")
                        standard.set(json["username"], forKey: "username")
                        
                        DispatchQueue.main.async {
                            standard.set(true, forKey: "loggedin")
                            var root: UIViewController?
                            root = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabBar")
                            let appDelegate = UIApplication.shared.delegate as! AppDelegate
                            appDelegate.window?.rootViewController = root
                        }
                        
                        
                        
                    }
                }
                
                }.resume()
        }
        
        
        
    }
}
