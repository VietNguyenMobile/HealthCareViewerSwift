//
//  SignUpController.swift
//  HealthCareViewer
//
//  Created by Macbook on 25/04/2024.
//

import UIKit

class SignUpViewController: BaseViewController {
    
    //MARK: UI Element
        
        private let patientCodeView: TextFieldWithTitle = {
            let view = TextFieldWithTitle()
            view.title = Resource.Title.SignInAndSignUp.patientCode
            view.placeHolder = Resource.Title.SignInAndSignUp.patientCodeSignUpPlaceHolder
            return view
        }()
        
        private let fullNameView: TextFieldWithTitle = {
            let view = TextFieldWithTitle()
            view.title = Resource.Title.SignInAndSignUp.fullName
            view.placeHolder = Resource.Title.SignInAndSignUp.fullName
            return view
        }()
    
    // MARK: View LifeCycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let backButtonItem = UIBarButtonItem(image: Resource.Images.backButtonImage, 
                                             style: .plain,
                                             target: self,
                                             action: #selector(backButtonTapped))
        
        let backTitleItem = UIBarButtonItem(title: Resource.Title.SignInAndSignUp.signUp,
                                            style: .plain,
                                            target: self,
                                            action: #selector(backButtonTapped))
        
        navigationItem.leftBarButtonItems = [backButtonItem, backTitleItem]
        
        let logoItem = UIBarButtonItem(image: Resource.Images.blueLogoImage, 
                                       style: .plain,
                                       target: nil,
                                       action: nil)
        
        navigationItem.rightBarButtonItem = logoItem
    }
    
    override func initialize() {
        setupViewPatientCodeView()
        setupViewFullNameView()
    }
    
    // MARK: UI Action
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: SetupView
        
    private func setupViewPatientCodeView() {
        view.addSubview(patientCodeView)
        patientCodeView.snp.makeConstraints { (make) in
            if #available(iOS 11.0, *) {
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(Dimension.shared.largeVerticalMargin_56)
            } else {
                make.top.equalTo(topLayoutGuide.snp.bottom).offset(Dimension.shared.largeVerticalMargin_56)
            }
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.largeHorizontalMargin)
        }
    }
    
    private func setupViewFullNameView() {
        view.addSubview(fullNameView)
        fullNameView.snp.makeConstraints { (make) in
            make.left.right.equalTo(patientCodeView)
            make.top.equalTo(patientCodeView.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
        }
    }
    
}
