//
//  TextViewWithTitle.swift
//  HealthCareViewer
//
//  Created by Macbook on 24/04/2024.
//

import UIKit

class TextFieldWithTitle: BaseUIView {
    
    // MARK: Properties
    
    public var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    public var placeHolder: String? {
        didSet {
            textField.placeholder = placeHolder
        }
    }
    
    public var isSecureTextEntry: Bool = false {
        didSet {
            textField.isSecureTextEntry = isSecureTextEntry
        }
    }
    
    public var textFieldInputView = UIView() {
        didSet {
            textField.inputView = textFieldInputView
        }
    }
    
    // MARK: UI Element
    
    private let titleLabel: UILabel = {
        let label = UILabel()
//        label.text = "Mã số bệnh nhân / bác sĩ"
        label.textColor = Theme.shared.primaryColor
        return label
    }()
    
    private let textField: UITextField = {
        let textField = UITextField()
//        textField.placeholder = "Nhập mã số"
        textField.textColor = Theme.shared.primaryColor
        return textField
    }()
    
    private let lineView: UIView = {
        let view = UIView()
//        view.backgroundColor = UIColor.gray
        view.backgroundColor = Theme.shared.lineDeviderColor
        return view
    }()
    
    
    // MARK: Object LifeCycle
    
    override func initialize() {
        setupTitleViewLabel()
        setupViewTextField()
        setupViewLineView()
    }
    
    // MARK: SetupView
    
    private func setupTitleViewLabel() {
       addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    
    private func setupViewTextField() {
        addSubview(textField)
        textField.snp.makeConstraints { (make) in
            make.left.equalTo(titleLabel)
            make.width.equalToSuperview()
            make.height.equalTo(Dimension.shared.defaultHeightTextField)
            make.top.equalTo(titleLabel.snp.bottom)
        }
    }
    
    private func setupViewLineView() {
        addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.width.equalTo(textField)
            make.height.equalTo(Dimension.shared.heightLineDivider)
            make.left.equalTo(textField)
            make.top.equalTo(textField.snp.bottom)
            make.bottom.equalToSuperview()
        }
    }
}
