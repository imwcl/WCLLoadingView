//
//  ViewController.swift
//  WCLLoadingView
//
//  Created by 王崇磊 on 16/8/16.
//  Copyright © 2016年 王崇磊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loadingView: WCLLoadingView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sizeSliderValueChange(sender: UISlider) {
        loadingView.transform = CGAffineTransformScale(CGAffineTransformIdentity, CGFloat(sender.value) , CGFloat(sender.value))
    }

    @IBAction func durationSliderValueChange(sender: UISlider) {
        loadingView.duration = Double(sender.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

