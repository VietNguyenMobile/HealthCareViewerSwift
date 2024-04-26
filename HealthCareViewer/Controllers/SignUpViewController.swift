//
//  SignUpController.swift
//  HealthCareViewer
//
//  Created by Macbook on 25/04/2024.
//

import UIKit

class SignUpViewController: BaseViewController {
    
    //MARK: UI Element
    
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.locale = Locale(identifier: "vi")
        return datePicker
    }()
        
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
    
    private lazy var DOBView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Resource.Title.SignInAndSignUp.DOBTitle
        view.placeHolder = Resource.Title.SignInAndSignUp.DOBPlaceHolder
        view.textFieldInputView = self.datePicker
        return view
    }()
    
    private var cityView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Resource.Title.SignInAndSignUp.addressTitle
        view.placeHolder = Resource.Title.SignInAndSignUp.cityPlaceHolder
        return view
    }()
    
    private var districtView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = ""
        view.placeHolder = Resource.Title.SignInAndSignUp.districPlaceHolder
        return view
    }()
    
    private var addressView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.placeHolder = Resource.Title.SignInAndSignUp.addressPlaceHolder
        return view
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.shared.disableButtonColor
        button.layer.cornerRadius = Dimension.shared.defaultHeightButton / 2
        button.setTitle(Resource.Title.SignInAndSignUp.nextButtonTitle, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize)
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
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
        setupViewDOBView()
        setupViewCityView()
        setupViewDistrictView()
        setupViewAddressView()
        setupViewNextButtonView()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(superViewTapped))
        view.addGestureRecognizer(tapGesture)
    }
    
    // MARK: UI Action
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func superViewTapped() {
        view.endEditing(true)
    }
    
    @objc func nextButtonTapped() {
        
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
    
    private func setupViewDOBView() {
        view.addSubview(DOBView)
        DOBView.snp.makeConstraints { (make) in
            make.left.equalTo(fullNameView)
            make.top.equalTo(fullNameView.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.width.equalTo(132 * Dimension.shared.widthScale)
        }
    }
    
    private func setupViewCityView() {
        view.addSubview(cityView)
        cityView.snp.makeConstraints { (make) in
            make.left.equalTo(DOBView)
            make.top.equalTo(DOBView.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.width.equalTo(DOBView)
        }
    }
    
    private func setupViewDistrictView() {
        view.addSubview(districtView)
        districtView.snp.makeConstraints { (make) in
            make.right.equalTo(fullNameView)
            make.bottom.width.equalTo(cityView)
        }
    }
    
    private func setupViewAddressView() {
        view.addSubview(addressView)
        addressView.snp.makeConstraints { (make) in
            make.left.right.equalTo(fullNameView)
            make.top.equalTo(districtView.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
        }
    }
    
    private func setupViewNextButtonView() {
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { (make) in
            make.top.equalTo(addressView.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.width.equalTo(Dimension.shared.mediumWidthButton)
            make.height.equalTo(Dimension.shared.defaultHeightButton)
            make.centerX.equalToSuperview()
        }
    }
}
