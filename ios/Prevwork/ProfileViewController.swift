//
//  ProfileViewController.swift
//  Prevwork
//
//  Created by 曹玥 on 2019/2/28.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var companyTextField: UILabel!
    @IBOutlet weak var usernameTextField: UILabel!
    
    @IBOutlet weak var industryTextField: UILabel!
    @IBOutlet weak var sizeTextField: UILabel!
    @IBOutlet weak var locationTextField: UILabel!
    @IBOutlet weak var foundedTextField: UILabel!
    
    @IBOutlet weak var profileTable: UITableView!
    
    
    @IBOutlet weak var profileImage: UIImageView!
    
    var profileRows: [ProfileRow] = []
    override func viewDidAppear(_ animated: Bool) {
        print("Profile appears again")
        reload()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        profileImage.layer.borderColor = UIColor.white.cgColor;
        profileImage.layer.borderWidth = 0;
        profileTable.tableFooterView = UIView()
        
        let standard = UserDefaults.standard
        
        usernameTextField.text = standard.string(forKey: "username")
        industryTextField.text = standard.string(forKey: "industry")
        sizeTextField.text = standard.string(forKey: "size")
        locationTextField.text = standard.string(forKey: "location")
        foundedTextField.text = standard.string(forKey: "founded")
        companyTextField.text = standard.string(forKey: "companyName")
        
        profileTable.dataSource = self
        profileTable.delegate = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "editProfile") {
            let profileEditorViewController = segue.destination as! ProfileEditorViewController
            profileEditorViewController.editTitle = (sender as! UIButton).titleLabel?.text
        }
    }
    
    
    @IBAction func signOut(_ sender: Any) {
        
        UserDefaults.standard.set(false, forKey: "loggedin")
        var root: UIViewController?
        root = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "signin")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = root
    }
    
    
    @IBAction func openImageGallery(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.mediaTypes = ["public.image"]
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func reload() {
        profileRows = createProfile()
        profileTable.reloadData()


    }
    

}

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        let imageData: Data = image!.pngData()!
        let imageURL = imageData.base64EncodedString()
        profileImage.image = image
        self.dismiss(animated: true, completion: nil)
        
        
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = profileRows[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell") as! ProfileTableViewCell
        cell.setCell(row: row)
        return cell
    }
    
    
}

func createProfile() -> [ProfileRow] {
    var rows: [ProfileRow] = []
    let standard = UserDefaults.standard
    let companyName = ProfileRow(title: "Company Name", value: standard.string(forKey: "companyName")!)
    let username = ProfileRow(title: "Username", value: standard.string(forKey: "username")!)
    let industry = ProfileRow(title: "Industry", value: standard.string(forKey: "industry")!)
    let companySize = ProfileRow(title: "Company Size", value: standard.string(forKey: "size")!)
    let founded = ProfileRow(title: "Founded", value: standard.string(forKey: "founded")!)
    let location = ProfileRow(title: "Location", value: standard.string(forKey: "location")!)
    rows.append(companyName)
    rows.append(username)
    rows.append(industry)
    rows.append(companySize)
    rows.append(founded)
    rows.append(location)
    return rows
    
}



