//
//  ViewController.swift
//  ContactDetailsAbhishek
//
//  Created by Abhishek on 05/07/24.
//

import UIKit

extension ViewController: ContactDetailsProtocol{
    func didUpdateDetails(email: String, phoneNumber: String) {
        emailLabel.text = email
        phoneLabel.text = phoneNumber
    }
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailLabel: UITextView!
    @IBOutlet weak var phoneLabel: UITextView!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveText(_ sender: UIButton) {
        let vc = self.storyboard?
            .instantiateViewController(withIdentifier: "second")as?
            UpdateViewController
        vc?.delegate = self
        self.navigationController?
            .pushViewController(vc!, animated: true)
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        image.backgroundColor = .black
        image.layer.cornerRadius = image.frame.size.height/2
        image.clipsToBounds = true
    }
    
}
