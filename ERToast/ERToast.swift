//
//  ERToast.swift
//  ERToast
//
//  Created by Mahmudul Hasan R@zib on 6/26/18.
//  Copyright © 2018 Matrix Solution Ltd. All rights reserved.
//

import UIKit

class ERToast: NSObject {
    
    static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    
    class func showToast(_ message: String?, point: CGPoint) {
        
        let fontSize: CGFloat = 13.0
        guard let font = UIFont(name: "Helvetica-Bold", size: fontSize) else { return }
        
        let wd = SCREEN_WIDTH*2/3
        let size = labelSize(for: message!, maxWidth: SCREEN_WIDTH*2/3, maxHeight: wd*2/3, font: font)
        
        let label:UILabel = UILabel(frame: CGRect.init(x: 0, y: 0, width: size.width + 20, height: size.height + 20))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = message
        label.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        label.layer.cornerRadius = label.frame.height/2.0
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 1.5
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.center = point
        
        label.alpha = 0
        UIApplication.shared.keyWindow?.addSubview(label)
        
        label.fadeIn(0.5, delay: 0) { (finished) in
            label.alpha = 1
            label.fadeOut(0.5, delay: 2.0) { (finished) in
                label.isHidden = true
                label.removeFromSuperview()
            }
        }
    }
    
    
    class func showToast(_ message: String?, point: CGPoint, delayTime: Float) {
        
        let fontSize: CGFloat = 13.0
        guard let font = UIFont(name: "Helvetica-Bold", size: fontSize) else { return }
        
        let wd = SCREEN_WIDTH*2/3
        let size = labelSize(for: message!, maxWidth: SCREEN_WIDTH*2/3, maxHeight: wd*2/3, font: font)
        
        let label:UILabel = UILabel(frame: CGRect.init(x: 0, y: 0, width: size.width + 20, height: size.height + 20))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = message
        label.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        label.layer.cornerRadius = label.frame.height/2.0
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 1.5
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.center = point
        
        label.alpha = 0
        UIApplication.shared.keyWindow?.addSubview(label)
        
        label.fadeIn(0.5, delay: 0) { (finished) in
            label.alpha = 1
            label.fadeOut(0.5, delay: TimeInterval(delayTime)) { (finished) in
                label.isHidden = true
                label.removeFromSuperview()
            }
        }
    }
    
    
    class func showToast(atCenter message: String?, delayTime: Float) {
        
        let fontSize: CGFloat = 13.0
        guard let font = UIFont(name: "Helvetica-Bold", size: fontSize) else { return }
        
        let wd = SCREEN_WIDTH*2/3
        let size = labelSize(for: message!, maxWidth: SCREEN_WIDTH*2/3, maxHeight: wd*2/3, font: font)
        
        let label:UILabel = UILabel(frame: CGRect.init(x: 0, y: 0, width: size.width + 20, height: size.height + 20))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = message
        label.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        label.layer.cornerRadius = label.frame.height/2.0
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 1.5
        label.clipsToBounds = true
        label.layer.masksToBounds = true
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.center = CGPoint(x: UIScreen.main.bounds.size.width / 2.0, y: UIScreen.main.bounds.size.height / 2.0)

        label.alpha = 0
        UIApplication.shared.keyWindow?.addSubview(label)
        
        label.fadeIn(0.5, delay: 0) { (finished) in
            label.alpha = 1
            label.fadeOut(0.5, delay: TimeInterval(delayTime)) { (finished) in
                label.isHidden = true
                label.removeFromSuperview()
            }
        }
    }
    
    private class func labelSize(for text: String, maxWidth: CGFloat, maxHeight: CGFloat, font: UIFont) -> CGSize {

        let attributes: [NSAttributedString.Key: Any] = [
            .font: font
        ]

        let attributedText = NSAttributedString(string: text, attributes: attributes)

        let constraintBox = CGSize(width: maxWidth, height: maxHeight)
        let rect = attributedText.boundingRect(with: constraintBox, options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil).integral

        return rect.size
    }
}

extension UIView {
    
    func fadeIn(_ duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)
    }
    
    func fadeOut(_ duration: TimeInterval = 0.5, delay: TimeInterval = 3.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 0
        }, completion: completion)
    }
}



