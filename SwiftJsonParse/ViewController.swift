//
//  ViewController.swift
//  SwiftJsonParse
//
//  Created by Fumiaki Saito on 2015/03/30.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 配列json
        var path = NSBundle.mainBundle().pathForResource("cars", ofType: "json")
        var jsondata = NSData(contentsOfFile: path!)
        var jsonArray = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as! NSArray
        for dat in jsonArray {
            println("車名=\(dat)")
        }
        
        // 辞書json
        path = NSBundle.mainBundle().pathForResource("hilux", ofType: "json")
        jsondata = NSData(contentsOfFile: path!)
        var jsonDictionary = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as! NSDictionary
        for dat in jsonDictionary {
            println("値=\(dat)")
        }

        // 辞書の配列
        path = NSBundle.mainBundle().pathForResource("tires", ofType: "json")
        jsondata = NSData(contentsOfFile: path!)
        jsonArray = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as! NSArray
        for dat in jsonArray {
            var d1 = dat["name"]
            var d2 = dat["price"]
            println("name=\(d1) price=\(d2)")
        }
        
        // 辞書の辞書
        path = NSBundle.mainBundle().pathForResource("carspecs", ofType: "json")
        jsondata = NSData(contentsOfFile: path!)
        jsonDictionary = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as! NSDictionary
        for (key, data) in jsonDictionary {
            var d1 = data["価格"]
            var d2 = data["色"]
            var d3 = data["エンジン"]
            println("キー[\(key)]   価格=\(d1)")
            println("キー[\(key)]   色=\(d2)")
            println("キー[\(key)]   エンジン=\(d3)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

