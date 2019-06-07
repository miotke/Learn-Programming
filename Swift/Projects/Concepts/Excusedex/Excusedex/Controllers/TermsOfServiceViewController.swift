//
//  TermsOfServiceViewController.swift
//  Excusedex
//
//  Created by Andrew Miotke on 12/30/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import WebKit

class TermsOfServiceViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationController()
        loadWebView()
    }
    
    func loadWebView() {
        let url = URL(string: "https://www.andrewmiotke.com/jekyll/update/2018/07/10/vision-and-purpose.html")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
}

// MARK: Extensions - Navigation Controller
extension TermsOfServiceViewController {
    
    func setupNavigationController() {
        self.navigationItem.title = "Terms of Service"
    }
}
