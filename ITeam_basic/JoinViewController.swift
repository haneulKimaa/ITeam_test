//
//  JoinViewController.swift
//  ITeam_basic
//
//  Created by 김하늘 on 2021/11/17.
//

import UIKit

class JoinViewController: UIViewController, UITextFieldDelegate {

    // 이메일 Textfield
    @IBOutlet weak var emailTF: UITextField!
    // 비밀번호 Textfield
    @IBOutlet weak var passwordTF: UITextField!
    // 닉네임 Textfield
    @IBOutlet weak var nicknameTF: UITextField!
    // 이메일 view nextBtn
    @IBOutlet weak var emailViewNextBtn: UIButton!
    // 이메일 인증 확인 멘트 label
    @IBOutlet weak var emailVFLabel: UILabel!
    let thisStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.async {
            if let emailBtn = self.emailViewNextBtn  {
                emailBtn.isHidden = true
                emailBtn.isEnabled = false
            }
            if let label = self.emailVFLabel  {
                label.isHidden = true
            }
            
            // textfield 좌측 공백
            if let email = self.emailTF {
                email.layer.sublayerTransform = CATransform3DMakeTranslation(20, 0, 0)
            }
            if let password = self.passwordTF {
                password.layer.sublayerTransform = CATransform3DMakeTranslation(20, 0, 0)
            }
            if let nickname = self.nicknameTF {
                nickname.layer.sublayerTransform = CATransform3DMakeTranslation(20, 0, 0)
            }
            
        }

        // Do any additional setup after loading the view.
    }
    // [Keyboard setting] 화면 클릭시 제거
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // [Button action] 이메일 인증
    @IBAction func emailVF(_ sender: UIButton) {
        // firebase 인증
        
        DispatchQueue.main.async {
            sender.isHidden = true
            self.emailViewNextBtn.isHidden = false
            self.emailViewNextBtn.isEnabled = true
            self.emailVFLabel.isHidden = false
            
            self.emailTF.isEnabled = false
        }
    }
    
    
    
    // [Button action] 이전으로
    @IBAction func goBackBtn(_ sender: UIBarButtonItem) {
        goBack()
    }
    @objc func goBack() {
           self.navigationController?.popViewController(animated: true)
    }
    
    // [Button action] 시작화면으로
    @IBAction func goBackToFirstBtn(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // [Button action] 회원가입 완료 팝업
    @IBAction func showPopupViewBtn(_ sender: UIButton) {
        let popupVC = thisStoryboard.instantiateViewController(withIdentifier: "JoinSuccessVC")
        popupVC.modalPresentationStyle = .overFullScreen
        present(popupVC, animated: false, completion: nil)
    }
}


