//
//  DictionaryExtensionsViewController.swift
//  SwiftDevHints-Demo
//
//  Created by ZHOU DENGFENG on 1/8/17.
//  Copyright © 2017 ZHOU DENGFENG DEREK. All rights reserved.
//

import UIKit
import SwiftDevHints

class DictionaryExtensionsViewController: UIViewController {

    private let json = "{\"id\":\"1\",\"name\":\"Derek\",\"age\":29,\"isOnline\":true,\"latitude\":1.29027,\"longitude\":103.851959}"
    
    @IBAction func parseJSON() {
        let jsonData = json.data(using: .utf8)!
        let dictionary = try! JSONSerialization.jsonObject(with: jsonData, options: []) as! [String: Any]
        
        let id = dictionary.intValue(forKey: "id")
        let name = dictionary.stringValue(forKey: "name")
        let age = dictionary.intValue(forKey: "age")
        let isOnline = dictionary.boolValue(forKey: "isOnline")
        let latitude = dictionary.doubleValue(forKey: "latitude")
        let longitude = dictionary.doubleValue(forKey: "longitude")
        
        Log.debug("id = \(id)")
        Log.debug("name = \(name)")
        Log.debug("age = \(age)")
        Log.debug("isOnline = \(isOnline)")
        Log.debug("latitude = \(latitude)")
        Log.debug("longitude = \(longitude)")        
    }
}
