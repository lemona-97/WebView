//
//  ViewController.swift
//  WebView
//
//  Created by wooseob on 2023/05/24.
//

import UIKit
import WebKit

final class ViewController: UIViewController {

    
    @IBOutlet weak var webVIew: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpWebView()
    }
    private func setUpWebView() {
        self.webVIew.load(URLRequest(url: URL(string: "https://www.naver.com")!))
        
    }

}

extension ViewController: WKUIDelegate {
  
}
extension ViewController: WKNavigationDelegate {
    
}
