//
//  LoginViewController.swift
//  Temporary
//
//  Created by Macbook on 27/02/19.
//  Copyright © 2019 SiliconStack. All rights reserved.
//

import UIKit

public class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextfld: UITextField!
    @IBOutlet weak var passwordTextFld: UITextField!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)
        {
            self.initUI()
        }
    }
    
    public func initUI()
    {
        emailTextfld.layer.cornerRadius = emailTextfld.frame.height/2
        emailTextfld.layer.borderWidth  = 1
        emailTextfld.layer.borderColor  = UIColor.darkGray.cgColor
        
        passwordTextFld.layer.cornerRadius = passwordTextFld.frame.height/2
        passwordTextFld.layer.borderWidth  = 1
        passwordTextFld.layer.borderColor  = UIColor.darkGray.cgColor
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: (emailTextfld?.frame.size.height)!))
        emailTextfld.leftView = paddingView
        passwordTextFld.leftView = paddingView
        emailTextfld.leftViewMode = .always
        passwordTextFld.leftViewMode = .always
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("username \(String(describing: emailTextfld.text)) password \(String(describing: passwordTextFld.text))")
        
        emailTextfld.layer.cornerRadius = emailTextfld.frame.height/2
        emailTextfld.layer.borderWidth  = 1
        emailTextfld.layer.borderColor  = UIColor.darkGray.cgColor
        
        passwordTextFld.layer.cornerRadius = passwordTextFld.frame.height/2
        passwordTextFld.layer.borderWidth  = 1
        passwordTextFld.layer.borderColor  = UIColor.darkGray.cgColor
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: (emailTextfld?.frame.size.height)!))
        emailTextfld.leftView = paddingView
        passwordTextFld.leftView = paddingView
        emailTextfld.leftViewMode = .always
        passwordTextFld.leftViewMode = .always
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        print("Can you help me out resetting the password?")
    }
    
    
    public init() {
        super.init(nibName: "LoginViewController", bundle: Bundle(for: LoginViewController.self))
    }
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
