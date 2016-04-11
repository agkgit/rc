//
//  RCHistory.swift
//  rc
//
//  Created by Arseniy Krupenin on 12.03.16.
//  Copyright © 2016 RH. All rights reserved.
//

import UIKit

class RCHistory: NSObject {
    
    static func getSectors() -> [String] {
        
        
        
        let urlString = "http://redhelper.ru/rc/calls?sh=100&q=100&widgetId=563940&key=" + AppData.restKey
        
        let url = NSURL(string: urlString)
        let data = try? NSData(contentsOfURL: url!, options: [])
        let json = JSON(data: data!)
        
        var days = [String]()
        
        for i in 0 ..< json.count {
            days.append(json[i]["time"].string!)
        }
        
        return days
        
    }
    
    
    static func getHistory() -> [RedConnectCallData] {
        
        var callsHistoryArray = [RedConnectCallData]()
        
//        let file = NSBundle.mainBundle().pathForResource("calls", ofType: "json") as String!
//        let data = NSData(contentsOfFile: file) as NSData!
//        let json = JSON(data: data, options: NSJSONReadingOptions.MutableContainers, error: nil)
        
        
        
        let urlString = "http://redhelper.ru/rc/calls?sh=48&q=48&widgetId=262668&key=kcQkvJSLW79461Ehr4lyWD2vRM6ZVN1eyapT-pU4Nf8r-GVzpJL9tHmmFzp3jNdv" //+ AppData.restKey
        
        let url = NSURL(string: urlString)
        let data = try? NSData(contentsOfURL: url!, options: [])
        let json = JSON(data: data!)
        
        
        for i in 0 ..< json.count {
            
                let call = RedConnectCallData()
//                
//                if let id = json[i]["value"][j]["id"].int { call.id = id }
//                
//                if let data = json[i]["key"].string { call.data = data }
//                
//                if let time = json[i]["value"][j]["time"].string { call.time = time }
//                
//                if let status = json[i]["value"][j]["status"].string { call.status = status }
//                
//                if let vid = json[i]["value"][j]["vid"].int { call.vid = vid }
//                
//                if let clientPhone = json[i]["value"][j]["clientPhone"].string {
//                    call.clientPhone = clientPhone
//                }
//                
//                if let visitorPhone = json[i]["value"][j]["visitorPhone"].string {
//                    call.visitorPhone = visitorPhone
//                }
//                
//                if let free = json[i]["value"][j]["free"].bool { call.free = free }
//                
//                if let country = json[i]["value"][j]["country"].string { call.country = country }
//                
//                if let countryRu = json[i]["value"][j]["countryRu"].string { call.countryRu = countryRu }
//
//                if let city = json[i]["value"][j]["city"].string { call.city = city }
//                
//                if let cityRu = json[i]["value"][j]["cityRu"].string { call.cityRu = cityRu }
//                
//                if let duration = json[i]["value"][j]["duration"].string { call.duration = duration }
//
//                if let liked = json[i]["value"][j]["liked"].bool { call.liked = liked }
//
//                if let widgetId = json[i]["value"][j]["widgetId"].int { call.widgetId = widgetId }
//                
//                if let browser = json[i]["value"][j]["browser"].string { call.browser = browser }
//                
//                if let visits = json[i]["value"][j]["visits"].int { call.visits = visits }
//                
//                if let feedbackComment = json[i]["value"][j]["feedbackComment"].string {
//                    call.feedbackComment = feedbackComment
//                }
//                
//                if let page = json[i]["value"][j]["page"].string { call.page = page }
//                
//                if let ip = json[i]["value"][j]["ip"].string { call.ip = ip }
//                
//                if let timeOnSite = json[i]["value"][j]["timeOnSite"].string { call.timeOnSite = timeOnSite }
//                
//                if let viewedPages = json[i]["value"][j]["viewedPages"].int { call.viewedPages = viewedPages }
//                
//                if let comment = json[i]["value"][j]["comment"].string { call.comment = comment }
//                
//                if let hasFileName = json[i]["value"][j]["hasFileName"].bool { call.hasFileName = hasFileName }

                
            
            
            
            if let id = json[i][""].int { call.id = id }
            if let widgetId = json[i]["widgetId"].int { call.widgetId = widgetId }
            if let time = json[i]["time"].string { call.time = time }
            if let requestTimestamp = json[i]["requestTimestamp"].string { call.requestTimestamp = requestTimestamp }
            if let scheduled = json[i]["scheduled"].int { call.scheduled = scheduled }
            if let clientPhone = json[i]["clientPhone"].string { call.clientPhone = clientPhone }
            if let visitorPhone = json[i]["visitorPhone"].string { call.visitorPhone = visitorPhone }
            if let vid = json[i]["vid"].int { call.vid = vid }
            if let duration = json[i]["duration"].int { call.duration = duration }
            if let free = json[i]["free"].bool { call.free = free }
            if let liked = json[i]["liked"].bool { call.liked = liked }
            if let feedbackComment = json[i]["feedbackComment"].string { call.feedbackComment = feedbackComment }
            if let page = json[i]["page"].string { call.page = page }
            if let ip = json[i]["ip"].string { call.ip = ip }
            if let timeOnSite = json[i]["timeOnSite"].string { call.timeOnSite = timeOnSite }
            if let referrer = json[i]["referrer"].string { call.referrer = referrer }
            if let visits = json[i]["visits"].int { call.visits = visits }
            if let viewedPages = json[i]["viewedPages"].int { call.viewedPages = viewedPages }
            if let country = json[i]["country"].string { call.country = country }
            if let countryRu = json[i]["countryRu"].string { call.countryRu = countryRu }
            if let city = json[i]["city"].string { call.city = city }
            if let cityRu = json[i]["cityRu"].string { call.cityRu = cityRu }
            if let browser = json[i]["browser"].string { call.browser = browser }
            if let customFields = json[i]["customFields"].string { call.customFields = customFields }
            if let status = json[i]["status"].string { call.status = status }
            if let comment = json[i]["comment"].string { call.comment = comment }
            if let filename = json[i]["filename"].string { call.filename = filename }
            
            
            
                
                callsHistoryArray.append(call)
            }
        }
        
        return callsHistoryArray
    }
}

class RedConnectCallData: NSObject {
    
    
    var id: Int!
    var widgetId: Int!
    var time: String!
    var requestTimestamp: String!
    var scheduled: Int!
    var clientPhone:  String!
    var visitorPhone: String!
    var vid: Int!
    var duration: Int!
    var free: Bool!
    var liked: Bool!
    var feedbackComment: String!
    var page: String!
    var ip: String!
    var timeOnSite: String!
    var referrer: String!
    var visits: Int!
    var viewedPages: Int!
    var country: String!
    var countryRu: String!
    var city: String!
    var cityRu: String!
    var browser: String!
    var customFields: String!
    var status: String!
    var comment: String!
    var filename: String!
    
    
//    var id: Int!
//    var data: String!
//    var time: String!
//    var status: String!
//    var vid: Int!
//    var clientPhone: String!
//    var visitorPhone: String!
//    var free: Bool!
//    var country: String!
//    var countryRu: String!
//    var city: String!
//    var cityRu: String!
//    var duration: String!
//    var liked: Bool!
//    
//    var widgetId: Int!
//    var browser: String!
//    var visits: Int!
//    var feedbackComment: String!
//    var page: String!
//    var ip: String!
//    var timeOnSite: String!
//    var viewedPages: Int!
//    var comment: String!
//    var hasFileName: Bool!
//    
//    var reached: Bool!
//    var referrer: String!
    
}

