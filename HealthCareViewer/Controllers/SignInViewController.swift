//
//  SignInViewController.swift
//  HealthCareViewer
//
//  Created by Macbook on 23/04/2024.
//

import UIKit

class SignInViewController: UIViewController {
    
    let logoImage = UIImageView()
    let patientCodeLabel = UILabel()
    let patientCodeTextField = UITextField()
    let lineView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        logoImage.image = UIImage(named: "LogoBlue")
        view.addSubview(logoImage)
        
        logoImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(78)
            make.centerX.equalToSuperview()
        }
        
        
        view.addSubview(patientCodeLabel)
        patientCodeLabel.text = "Mã số bệnh nhân / bác sĩ"
        patientCodeLabel.textColor = UIColor.blue
        
        patientCodeLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(42)
            make.top.equalTo(logoImage.snp.bottom).offset(42)
        }
        
        view.addSubview(patientCodeTextField)
        patientCodeTextField.placeholder = "Nhập mã số"
        patientCodeTextField.snp.makeConstraints { (make) in
            make.left.equalTo(patientCodeLabel)
            make.width.equalTo(291)
            make.height.equalTo(35)
            make.top.equalTo(patientCodeLabel.snp.bottom).offset(16)
        }
        
        view.addSubview(lineView)
        lineView.backgroundColor = UIColor.gray
        lineView.snp.makeConstraints { (make) in
            make.width.equalTo(patientCodeTextField)
            make.height.equalTo(1)
            make.left.equalTo(patientCodeTextField)
            make.top.equalTo(patientCodeTextField.snp.bottom)
        }
        
    }
    
}
