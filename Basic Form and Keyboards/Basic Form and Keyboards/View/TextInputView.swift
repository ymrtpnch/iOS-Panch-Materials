//
//  TextInputView.swift
//  Basic Form and Keyboards
//
//  Created by Артем Панченко on 06.03.2026.
//

import UIKit
import SnapKit

final class TextInputView: UIView {
    
    enum InputType {
        case name
        case surname
        case address
        case zipCode
        case email
        case password
    }
    
    private let textField = UITextField()

    init(type: InputType) {
            super.init(frame: .zero)

            setupViews()
            setupConstraints()
            configure(type: type)
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

}

// MARK: - setup
extension TextInputView {
    func setupViews() {
        textField.font = .systemFont(ofSize: 16)
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        
        addSubview(textField)
    }
}

// MARK: - layout
extension TextInputView {
    func setupConstraints() {
        textField.snp.makeConstraints {
                 $0.edges.equalToSuperview().inset(12)
             }
             
             snp.makeConstraints {
                 $0.height.equalTo(44)
             }
    }
}

// MARK: - configure with type
extension TextInputView {
    
    func configure(type: InputType) {
        
        switch type {
            
        case .name:
            textField.placeholder = "First name"
            textField.autocapitalizationType = .words
            
        case .surname:
            textField.placeholder = "Surname"
            textField.autocapitalizationType = .words
        
        case .address:
            textField.placeholder = "Address"
            textField.autocapitalizationType = .words
            
        case .zipCode:
            textField.placeholder = "ZIP"
            textField.keyboardType = .numberPad
            
        case .email:
            textField.placeholder = "Email"
            textField.keyboardType = .emailAddress
            textField.autocapitalizationType = .none
            textField.autocorrectionType = .no
            
        case .password:
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
            textField.textContentType = .password
            textField.autocorrectionType = .no
            textField.autocapitalizationType = .none
        }
    }
    
}
