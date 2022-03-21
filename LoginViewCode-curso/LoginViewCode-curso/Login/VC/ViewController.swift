//
//  ViewController.swift
//  LoginViewCode-curso
//
//  Created by Gilmar Junior on 14/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
}

extension ViewController: LoginScreenProtocol {
    
    func actionLoginButton() {
        print("Deu bom login !!!")
    }
    
    func actionRegisterButton() {
        print("Deu bom o registro !!!")
    }
    
    
}

