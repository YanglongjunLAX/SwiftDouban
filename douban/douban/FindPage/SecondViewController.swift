//
//  SecondViewController.swift
//  douban
//
//  Created by duowan on 15/12/28.
//  Copyright © 2015年 yy-vip. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ChannelInfo.channelInstance().queryChannelInfo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

