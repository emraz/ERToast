//
//  ViewController.swift
//  ERToast
//
//  Created by Mahmudul Hasan R@zib on 6/26/18.
//  Copyright © 2018 Matrix Solution Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showToast(_ sender: Any) {
        let point = CGPoint(x:self.view.frame.size.width/2.0 ,y:150)
        ERToast.showToast("Toast Message Toast Message Toast Message Toast Message", point: point)
    }
    
    
    @IBAction func showToastAtCenter(_ sender: Any) {
        ERToast.showToast(atCenter: "Toast Message", delayTime: 0.5)
    }
    
    
    @IBAction func showToastAfterDelay(_ sender: Any) {
        let point = CGPoint(x:self.view.frame.size.width/2.0, y:500)
        ERToast.showToast("Toast Message", point: point, delayTime: 0.5)
    }
    
}

