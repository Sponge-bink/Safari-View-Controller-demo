//
//  ViewController.swift
//  Safari View Controller demo
//
//  Created by spongebink on 2019/1/23.
//  Copyright © 2019 spongebink. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func watchButtonTapped(_ sender: UIButton) {
        watchVideo()
    }
    
    func watchVideo() {
        showSafariVC(for: "https://www.youtube.com/watch?v=hMapDBmEwpE")
    }
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
}

