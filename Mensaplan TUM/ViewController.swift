//
//  ViewController.swift
//  Mensaplan TUM
//
//  Created by florian schweizer on 13.12.16.
//  Copyright © 2016 florian schweizer. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var iframe: WebView!
    @IBOutlet weak var backButton: NSButton!
    @IBOutlet weak var forwardButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear() {
        iframe.mainFrameURL = "http://www.studentenwerk-muenchen.de/mensa/speiseplan/speiseplan_422_-de.html#heute"
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func forwardButtonPressed(_ sender: AnyObject) {
        iframe.mainFrameURL = "http://www.studentenwerk-muenchen.de/mensa/speiseplan/speiseplan_524_-de.html#heute"
    }
    
    @IBAction func backButtonPressed(_ sender: NSButton) {
        iframe.mainFrameURL = "http://www.studentenwerk-muenchen.de/mensa/speiseplan/speiseplan_422_-de.html#heute"
    }

}

