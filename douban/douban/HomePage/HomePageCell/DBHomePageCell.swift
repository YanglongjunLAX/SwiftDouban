//
//  DBHomePageCell.swift
//  douban
//
//  Created by duowan on 15/12/28.
//  Copyright © 2015年 yy-vip. All rights reserved.
//

import UIKit

class DBHomePageCell: UITableViewCell {
    
    @IBOutlet weak var pageImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var contentLAbel: UILabel!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var headImageView: UIImageView!
}

extension DBHomePageCell {
    override func awakeFromNib() {
        self.selectionStyle = .None
        self.headImageView.layer.cornerRadius = 15
        self.headImageView.backgroundColor = UIColor.redColor()
        self.pageImageView.backgroundColor = UIColor.grayColor()
    }
}