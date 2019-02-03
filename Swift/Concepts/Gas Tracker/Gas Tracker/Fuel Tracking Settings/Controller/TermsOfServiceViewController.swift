//
//  TermsOfServiceViewController.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 1/5/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
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
        let url = URL(string: "https://miotke.github.io/FuelTracking/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
}

extension TermsOfServiceViewController {
    
    func setupNavigationController() {
        self.navigationController?.title = "Terms of Service"
    }
}
