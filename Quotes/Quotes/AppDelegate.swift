//
//  AppDelegate.swift
//  Quotes
//
//  Created by Kitwana on 2/17/16.
//  Copyright © 2016 AkilDev. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSSquareStatusItemLength)

    let popover = NSPopover()

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        if let button = statusItem.button {
            button.image = NSImage(named: "StatusBarButtonImage")
            button.action = Selector("togglePopover:")
        }
        
        popover.contentViewController = QuotesViewController(nibName: "QuotesViewController", bundle: nil)
        
//        let menu = NSMenu()
//        
//        menu.addItem(NSMenuItem(title: "Print Quote", action: Selector("printQuote:"), keyEquivalent: "P"))
//        menu.addItem(NSMenuItem.separatorItem())
//        
//        //terminate: is an action method defined in the shared application instance.  
//        //The action gets sent up the responder chain until it arrives at the shared application, 
//        //in which case the application quits.
//        menu.addItem(NSMenuItem(title: "Quit Quotes", action: Selector("terminate:"), keyEquivalent: "q"))
//        
//        statusItem.menu = menu
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func showPopover(sender: AnyObject?) {
        if let button = statusItem.button {
            popover.showRelativeToRect(button.bounds, ofView: button, preferredEdge: NSRectEdge.MinY)
        }
    }
    
    func closePopover(sender: AnyObject?) {
        popover.performClose(sender)
    }
    
    func togglePopover(sender: AnyObject?) {
        if popover.shown {
            closePopover(sender)
        }else {
            showPopover(sender)
        }
    }


}

