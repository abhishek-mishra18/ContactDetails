//
//  UpdateViewController.swift
//  ContactDetailsAbhishek
//
//  Created by Abhishek on 05/07/24.
//

import UIKit

protocol ContactDetailsProtocol: AnyObject{
    func didUpdateDetails(email:String, phoneNumber: String)
}

class UpdateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    weak var delegate: ContactDetailsProtocol?
    
    @IBAction func goBackButtonTapped() {
        let email = emailTextField.text ?? "No Value"
        let phone = phoneTextField.text ?? "No Value"
        delegate?.didUpdateDetails(email: email, phoneNumber: phone)
        navigationController?.popViewController(animated: true)
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
