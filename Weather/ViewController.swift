//
//  ViewController.swift
//  Weather
//
//  Created by Freddy Oakes on 3/29/15.
//  Copyright (c) 2015 The Hofmeister Kink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.stackoverflow.com")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            
            if error == nil {
                var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
                println(urlContent)
                dispatch_async(dispatch_get_main_queue()) {
                    self.webView.loadHTMLString(urlContent!, baseURL: nil)
                }
            }
        }
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}































