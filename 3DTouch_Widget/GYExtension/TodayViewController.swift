//
//  TodayViewController.swift
//  GYExtension
//
//  Created by zhuguangyang on 2017/1/19.
//  Copyright © 2017年 GYJade. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    var btn: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSize(width: UIScreen.main.bounds.width, height: 200)
        let tap = UITapGestureRecognizer(target: self, action: #selector(TodayViewController.openURLApp))
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(tap)
        let bg = UIImageView()
        bg.isUserInteractionEnabled = true
        bg.alpha = 0.01
        bg.backgroundColor = UIColor.gray
        bg.frame = self.view.frame
        self.view.addSubview(bg)
        
        bg.addGestureRecognizer(tap)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openURLApp() {
        
        
        self.extensionContext?.open(URL(string: "appextension://com.Ozner.gytouch")!, completionHandler: { (success) in
            print(success)
        })
        
    }
    
    func widgetMarginInsets(forProposedMarginInsets defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
