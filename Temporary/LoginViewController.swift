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
        emailTextfld.backgroundColor = UIColor.darkGray
        emailTextfld.layer.borderColor = UIColor.red.cgColor
        initUI()
    }
    
    public func initUI()
    {
        for textField in [emailTextfld, passwordTextFld]
        {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: (textField?.frame.size.height)!))
            textField?.leftView = paddingView
            textField?.leftViewMode = .always
            
            textField?.layer.cornerRadius = textField!.frame.height/2
            textField?.layer.borderWidth = 1
            textField?.layer.borderColor = UIColor.darkGray.cgColor
        }
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("username \(String(describing: emailTextfld.text)) password \(String(describing: passwordTextFld.text))")
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
