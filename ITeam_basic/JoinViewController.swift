//
//  JoinViewController.swift
//  ITeam_basic
//
//  Created by 김하늘 on 2021/11/17.
//

import UIKit

class JoinViewController: UIViewController {

    
    let thisStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
//        let back = UIImage(systemName: "xmark")
//        let leftBarButton: UIBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(goBack))
//        leftBarButton.tintColor = .lightGray
//        navigationItem.leftBarButtonItem = leftBarButton
//
//        let a = thisStoryboard.instantiateViewController(withIdentifier: "Join_emailVC")
        
    }
    @IBAction func goBackBtn(_ sender: UIBarButtonItem) {
        goBack()
    }
    
    @IBAction func goBackToFirstBtn(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func showPopupViewBtn(_ sender: UIButton) {
        let popupVC = thisStoryboard.instantiateViewController(withIdentifier: "JoinSuccessVC")
        popupVC.modalPresentationStyle = .overFullScreen
        present(popupVC, animated: false, completion: nil)
    }
    
    
    

    @objc func goBack() {
           self.navigationController?.popViewController(animated: true)
       }


}


