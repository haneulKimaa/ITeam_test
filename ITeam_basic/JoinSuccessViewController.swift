//
//  JoinSuccessViewController.swift
//  ITeam_basic
//
//  Created by 김하늘 on 2021/11/17.
//

import UIKit

class JoinSuccessViewController: UIViewController {

    @IBOutlet weak var popupView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        popupView.layer.cornerRadius = 25
        popupView.clipsToBounds = true
        // view.addSubview(containerView)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func successBtn(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    


}
