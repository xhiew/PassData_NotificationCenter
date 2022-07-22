//
//  ViewController.swift
//  PassData_Notifications
//
//  Created by ADMIN on 21/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgRootView: UIImageView!
    @IBOutlet weak var lbRootView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(passData(noti:)), name: .textChange, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(passData(noti:)), name: .sendImgae, object: nil)
    }


    @IBAction func btnTapped(_ sender: UIButton) {
        let subView = storyboard?.instantiateViewController(withIdentifier: "SubViewController") as! SubViewController
        
        navigationController?.pushViewController(subView, animated: true)
    }
    
    @objc func passData(noti: Notification) {
        switch (noti.name) {
        case .textChange:
            let text = noti.object as! String?
            lbRootView.text = text
        case .sendImgae:
            let image = noti.object as! UIImage?
            imgRootView.image = image
        default:
            return
        }
    }
}

