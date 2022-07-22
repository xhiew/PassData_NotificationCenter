//
//  SubViewController.swift
//  PassData_Notifications
//
//  Created by ADMIN on 22/07/2022.
//

import UIKit

class SubViewController: UIViewController {

    @IBOutlet weak var txtFieldSubView: UITextField!
    @IBOutlet weak var imgTrash: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    @IBAction func btnPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .textChange, object: txtFieldSubView.text, userInfo: nil)
        NotificationCenter.default.post(name: .sendImgae, object: imgTrash.image, userInfo: nil)
        navigationController?.popViewController(animated: true)
    }
}
