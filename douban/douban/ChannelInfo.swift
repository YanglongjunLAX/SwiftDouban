//
//  ChannelInfo.swift
//  douban
//
//  Created by duowan on 15/12/29.
//  Copyright © 2015年 yy-vip. All rights reserved.
//

import Foundation
import Kingfisher
import SwiftyJSON

private let instance = ChannelInfo()

//private let urlPath = "http://pk.yy.com/service/web/pkindex/getVipPkChannelDataDaily"

private let urlPath = "http://api.coindesk.com/v1/bpi/currentprice/CNY.json"

class ChannelInfo {
    /**
     单例模式
     
     - returns: 频道单利
     */
    class func channelInstance() -> ChannelInfo {
        return instance
    }
    
    func queryChannelInfo () {
        requestUrl(urlPath)
    }
    
    init () {
    
    }
    
    internal init (params:AnyObject) {
        if params is [String : AnyObject] {
            print("iiiiiii")
        }
    }
    
    func requestUrl(urlString: String){
        let url: NSURL = NSURL(string: urlString)!
        let request: NSURLRequest = NSURLRequest(URL: url)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler:{
            (response, data, error) -> Void in
            if ((error) != nil) {
                
            }else{
                //Handle data in NSData type
                let json = JSON(data: data!)
                print(json["time"]["updated"])
            }
        })
    }
    
}