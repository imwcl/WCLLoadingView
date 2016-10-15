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
        loadingView.startAnimation()
    }
    
    //MARK: Target Methods
    @IBAction func tapLoadingView(_ sender: UITapGestureRecognizer) {
        switch loadingView.status {
        case .animating:
            loadingView.pauseAnimation()
        case .pause:
            loadingView.resumeAnimation()
        case .normal:
            loadingView.startAnimation()
        }
    }
    
    @IBAction func sizeSliderValueChange(_ sender: UISlider) {
        loadingView.transform = CGAffineTransform.identity.scaledBy(x: CGFloat(sender.value) , y: CGFloat(sender.value))
    }

    @IBAction func durationSliderValueChange(_ sender: UISlider) {
        loadingView.duration = Double(sender.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

