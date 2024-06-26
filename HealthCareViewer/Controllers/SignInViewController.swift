//
//  SignInViewController.swift
//  HealthCareViewer
//
//  Created by Macbook on 23/04/2024.
//

import UIKit

class SignInViewController: BaseViewController {
    
    // MARK: View Element
    private let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Resource.Images.blueLogoImage
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let patientInputView : TextFieldWithTitle = {
       let view = TextFieldWithTitle()
        view.title = Resource.Title.SignInAndSignUp.patientCodeTitle
        view.placeHolder = Resource.Title.SignInAndSignUp.patientCodePlaceHolder
        return view
    }()
    
    private let passwordInputView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Resource.Title.SignInAndSignUp.passwordTitle
        view.placeHolder = Resource.Title.SignInAndSignUp.passwordPlaceholder
        view.isSecureTextEntry = true
        return view
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.shared.accentColor
        button.layer.cornerRadius = Dimension.shared.defaultHeightButton / 2
        button.setTitle(Resource.Title.SignInAndSignUp.signIn.uppercased(), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize)
        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = Dimension.shared.defaultHeightButton / 2
        button.setTitle(Resource.Title.SignInAndSignUp.signUp.uppercased(), for: .normal)
        button.setTitleColor(Theme.shared.accentColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize)
        button.addTarget(self, action: #selector(signUpButtontapped), for: .touchUpInside)
        return button
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func initialize() {
        super.initialize()
        setupViewLogoImageView()
        setupViewPatientInputView()
        setupViewPasswordInputView()
        setupViewSignInButton()
        setupViewSignUpButton()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    //MARK: UI Action
    
    @objc func signInButtonTapped() {
        print("Sign In Tapped")
    }
    
    @objc func signUpButtontapped() {
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    
    // MARK: SetupView
    
    private func setupViewLogoImageView() {
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_60)
            make.centerX.equalToSuperview()
        }
    }
    
    private func setupViewPatientInputView() {
        view.addSubview(patientInputView)
        patientInputView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_42)
            make.width.equalTo(Dimension.shared.defaultWidthTextfield)
            make.top.equalTo(logoImage.snp.bottom).offset(Dimension.shared.largeVerticalMargin_60)
        }
    }
    
    private func setupViewPasswordInputView() {
        view.addSubview(passwordInputView)
        passwordInputView.snp.makeConstraints { (make) in
            make.width.left.equalTo(patientInputView)
            make.top.equalTo(patientInputView.snp.bottom).offset(Dimension.shared.largeVerticalMargin_32)
        }
    }
    
    private func setupViewSignInButton() {
        view.addSubview(signInButton)
        signInButton.snp.makeConstraints { (make) in
            make.width.equalTo(Dimension.shared.defaultWidthButton)
            make.height.equalTo(Dimension.shared.defaultHeightButton)
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordInputView.snp.bottom).offset(Dimension.shared.largeVerticalMargin_60)
        }
    }
    
    private func setupViewSignUpButton() {
        view.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { (make) in
            make.centerX.width.height.equalTo(signInButton)
            make.top.equalTo(signInButton.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
        }
    }
    
}
