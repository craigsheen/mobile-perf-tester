//
//  ViewController.swift
//  mobile performance tester
//
//  Created by Craig Sheen on 28/8/17.
//  Copyright © 2017 Craig Sheen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getURL();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getURL() {
        let alertController = UIAlertController(title: "URL?", message: "Please input the URL you would like to visit", preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "Go", style: .default) { (_) in
            if let field = alertController.textFields?[0] {
                let url = field.text
                let request = URLRequest(url: URL(string: url!)!)
                self.webView.loadRequest(request);
            }
        }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "URL"
        }
        
        alertController.addAction(confirmAction)
        
        self.present(alertController, animated: true, completion: nil)
    }


}

