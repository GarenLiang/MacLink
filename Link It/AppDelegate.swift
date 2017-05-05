//
//  AppDelegate.swift
//  Link It
//
//  Created by GarenLiang on 2017/5/4.
//  Copyright © 2017年 GarenLiang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var item : NSStatusItem? = nil

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        item = NSStatusBar.system().statusItem(withLength:
            NSVariableStatusItemLength)
        item?.title = "Link"
        
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Link it", action: #selector(AppDelegate.linkIt), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(AppDelegate.quit), keyEquivalent: ""))
        item?.menu = menu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    func linkIt() {
        print("We Made It")
    }
    func quit() {
        NSApplication.shared().terminate(self)
    }


}

