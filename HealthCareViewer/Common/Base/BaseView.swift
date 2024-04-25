//
//  BaseView.swift
//  HealthCareViewer
//
//  Created by Macbook on 24/04/2024.
//

import UIKit

public class BaseUIView: UIView, ReusableView {
    public func initialize() {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
}
