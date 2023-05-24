//
//  ViewController.swift
//  WebView
//
//  Created by wooseob on 2023/05/24.
//

import UIKit
import WebKit

final class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    
    @IBOutlet weak var webVIew: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpWebView()
    }
    private func setUpWebView() {
        self.webVIew.load(URLRequest(url: URL(string: "https://www.op.gg/")!))
        self.webVIew.uiDelegate = self
        self.webVIew.navigationDelegate = self
        self.webVIew.allowsBackForwardNavigationGestures = true

    }

}

extension ViewController {
    //웹뷰 생성 +(코드 베이스로 만들때 쓸듯)
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        
        WKWebView()
    }
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo) async {
        let ac = UIAlertController(title: "Henry", message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Good", style: .default, handler: nil))
        present(ac, animated: true)
    }
    //    func webView(_ webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo) async -> Bool {
//        <#code#>
//    }
//    func webView(_ webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (String?) -> Void) {
//        <#code#>
//    }
    
    
}
extension ViewController {
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("뷰 불러오는중임 ")
    }
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("콘텐츠 받아오는중 ")
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("\(String(describing: navigation)) 끗")
    }
    
}

