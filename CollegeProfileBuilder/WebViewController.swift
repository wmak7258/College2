//
//  WebViewController.swift
//  CollegeProfileBuilder
//
//  Created by student1 on 3/16/16.
//  Copyright © 2016 John Hersey High school. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    var passData2 = college()
    override func viewDidLoad() {
        super.viewDidLoad()
    let url = NSURL(string: passData2.web)
    let request = NSURLRequest(URL: url!)
    webView.loadRequest(request)
        
    }
    @IBAction func dismiss(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

