//
//  BaseViewController.swift
//  HealthCareViewer
//
//  Created by Macbook on 24/04/2024.
//

import UIKit

protocol ReusableView {
    func initialize()
}

public class BaseViewController: UIViewController, ReusableView {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        initialize()
    }
    
    public func initialize() {
        
    }
}
