//
//  MainView.swift
//  Basic Form and Keyboards
//
//  Created by Артем Панченко on 06.03.2026.
//

import UIKit
import SnapKit

final class MainView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Basic Form"
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Test project to understand snapkit\n and keyboards fundamentals"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    let nameInput = TextInputView(type: .name)
    let surnameInput = TextInputView(type: .surname)
    let addressInput = TextInputView(type: .address)
    let zipCodeInput = TextInputView(type: .zipCode)
    let emailImput = TextInputView(type: .email)
    let passwordInput = TextInputView(type: .password)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(nameInput)
        addSubview(surnameInput)
        addSubview(addressInput)
        addSubview(zipCodeInput)
        addSubview(emailImput)
        addSubview(passwordInput)

        /*
         можно так
         [titleLabel, subtitleLabel].forEach {
            addSubview($0)
         }
        */
    }

    private func setupConstraints() {
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(36)
            $0.centerX.equalToSuperview()
        }
        
        subtitleLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(24)
            $0.centerX.equalToSuperview()
        }
        
        nameInput.snp.makeConstraints{
            $0.top.equalTo(subtitleLabel.snp.bottom).offset(24)
            $0.left.equalToSuperview().offset(9)
        }
        
        surnameInput.snp.makeConstraints{
            $0.top.equalTo(subtitleLabel.snp.bottom).offset(24)
            $0.right.equalToSuperview().offset(-9)
            $0.left.equalTo(nameInput.snp.right).offset(12)
            $0.width.equalTo(nameInput)
        }
        
        addressInput.snp.makeConstraints {
            $0.top.equalTo(surnameInput.snp.bottom).offset(12)
            $0.left.equalToSuperview().offset(9)
            $0.right.equalTo(zipCodeInput.snp.left).offset(-12)
        }

        zipCodeInput.snp.makeConstraints {
            $0.top.equalTo(surnameInput.snp.bottom).offset(12)
            $0.right.equalToSuperview().offset(-9)
            $0.width.equalToSuperview().multipliedBy(0.3)
        }
        
        emailImput.snp.makeConstraints {
            $0.top.equalTo(zipCodeInput.snp.bottom).offset(12)
            $0.left.right.equalToSuperview().inset(9)
            
        }
        
        passwordInput.snp.makeConstraints{
            $0.top.equalTo(emailImput.snp.bottom).offset(12)
            $0.left.right.equalToSuperview().inset(9)
        }
        
    }
}
