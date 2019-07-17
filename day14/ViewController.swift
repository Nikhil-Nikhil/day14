//
//  ViewController.swift
//  day14
//
//  Created by User on 2019-07-17.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webkitView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webkitView.navigationDelegate = self
        webkitView.allowsBackForwardNavigationGestures = true
       // self.loadFromString()
        self.loadFromUrl()
    }
func loadFromString()
{
    let htmlstr = """
<h1> Hello World </h1>
<h2> Hello World </h2>
<h3> Hello World </h3>
<h4> Hello World </h4>
<h5> Hello World </h5>
<h6> Hello World </h6>
"""
    webkitView.loadHTMLString(htmlstr, baseURL: nil)
    }
func loadFromUrl()
{
    let url = URL(string: "https://www.google.com")
    let urlreq = URLRequest(url: url!)
    webkitView.load(urlreq)
    }
    //func load
}

