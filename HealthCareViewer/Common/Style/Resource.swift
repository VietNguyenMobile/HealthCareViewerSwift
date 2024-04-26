//
//  Resource.swift
//  HealthCareViewer
//
//  Created by Macbook on 25/04/2024.
//

import UIKit

public class Resource {
    
    public class Images {
        public static var blueLogoImage: UIImage? = UIImage(named: "LogoBlue")
        public static var backButtonImage: UIImage? = UIImage(named: "BackButton")
    }
    
    public class Title {
        
        public class SignInAndSignUp {
            public static var patientCodeTitle = "Mã số bệnh nhân / Bác sĩ"
            public static var patientCodePlaceHolder = "Nhập mã số"
            public static var passwordTitle = "Mật khẩu"
            public static var passwordPlaceholder = "Nhập mật khẩu"
            public static var signIn = "Đăng nhập"
            public static var signUp = "Đăng kí"
            public static var patientCode = "Mã số bệnh nhân liên kết"
            public static var patientCodeSignUpPlaceHolder = "Mã số liên kết"
            public static var fullName = "Họ và tên"
            public static var DOBTitle = "Ngày sinh"
            public static var DOBPlaceHolder = "dd/mm/yyyy"
            public static var addressTitle = "Địa chỉ"
            public static var cityPlaceHolder = "Thành phố"
            public static var districPlaceHolder = "Quận/Huyện"
            public static var addressPlaceHolder = "Địa chỉ chỗ ở hiện tại (Số nhà, đường…)"
            public static var nextButtonTitle = "Tiếp theo"
        }
        
        public class Home {
            
        }
        
    }
    
}
