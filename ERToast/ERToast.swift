//
//  ERToast.swift
//  ERToast
//
//  Created by Mahmudul Hasan R@zib on 6/26/18.
//  Copyright © 2018 Matrix Solution Ltd. All rights reserved.
//

import UIKit

class ERToast: NSObject {
    
    
    class func showToast(_ message: String?, point: CGPoint) {
        
        let fontSize: CGFloat = 13
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
        label.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        label.layer.cornerRadius = 3.0
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 1.5
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        if let aSize = UIFont(name: "Helvetica-Bold", size: fontSize) {
            label.font = aSize
        }
        label.text = message
        label.textColor = UIColor.white
        label.textAlignment = .center
        //[label sizeToFit];
        label.center = point
        
        UIApplication.shared.keyWindow?.addSubview(label)
        UIView.animate(withDuration: 0.5, delay: 3, options: [], animations: {
            label.alpha = 0
        }) { finished in
            label.isHidden = true
            label.removeFromSuperview()
        }
    }
    
    
    class func showToast(_ message: String?, point: CGPoint, delayTime: Float) {
        
        let fontSize: CGFloat = 13
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
        label.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        label.layer.cornerRadius = 3.0
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 1.5
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        if let aSize = UIFont(name: "Helvetica-Bold", size: fontSize) {
            label.font = aSize
        }
        label.text = message
        label.textColor = UIColor.white
        label.textAlignment = .center
        //[label sizeToFit];
        label.center = point
        
        UIApplication.shared.keyWindow?.addSubview(label)
        UIView.animate(withDuration: 0.5, delay: TimeInterval(delayTime), options: [], animations: {
            label.alpha = 0
        }) { finished in
            label.isHidden = true
            label.removeFromSuperview()
        }
    }
    
    
    class func showToast(atCenter message: String?, delayTime: Float) {
        
        let fontSize: CGFloat = 13
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
        label.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        label.layer.cornerRadius = 3.0
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 1.5
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        if let aSize = UIFont(name: "Helvetica-Bold", size: fontSize) {
            label.font = aSize
        }
        label.text = message
        label.textColor = UIColor.white
        label.textAlignment = .center
        //[label sizeToFit];
        label.center = CGPoint(x: UIScreen.main.bounds.size.width / 2.0, y: UIScreen.main.bounds.size.height / 2.0)
        
        UIApplication.shared.keyWindow?.addSubview(label)
        UIView.animate(withDuration: 0.5, delay: TimeInterval(delayTime), options: [], animations: {
            label.alpha = 0
        }) { finished in
            label.isHidden = true
            label.removeFromSuperview()
        }
    }
}


