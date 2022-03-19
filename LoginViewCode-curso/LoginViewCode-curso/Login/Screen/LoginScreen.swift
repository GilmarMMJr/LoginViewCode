//
//  LoginScreen.swift
//  LoginViewCode-curso
//
//  Created by Gilmar Junior on 18/03/22.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var loginLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.addSubview(self.loginLabel)
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
}