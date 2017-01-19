//
//  ViewController.swift
//  3DTouch_Widget
//
//  Created by zhuguangyang on 2017/1/19.
//  Copyright © 2017年 GYJade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let webView = UIWebView(frame: self.view.frame)
        webView.loadRequest(URLRequest(url: URL(string: "http://www.rejuwang.com/?m=vod-play-id-2828-src-1-num-3.html")!))
        view.addSubview(webView)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

