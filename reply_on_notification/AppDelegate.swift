//
//  AppDelegate.swift
//  reply_on_notification
//
//  Created by dch on 9/1/15.
//  Copyright (c) 2015 co.l0o0l. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
    }
    
    func applicationDidBecomeActive(aNotification: NSNotification) {
        let a = NSScreen.mainScreen()
        let monitor_width = a!.visibleFrame.width
        
        let x: CGFloat = monitor_width - 55
        let y: CGFloat = 75
        
        var location = CGPointMake(x, y)
        CGWarpMouseCursorPosition(location)
        NSThread.sleepForTimeInterval(0.1)
        
        let click1_down = CGEventCreateMouseEvent(
            nil, CGEventType(kCGEventLeftMouseDown),
            CGPointMake(x, y),
            CGMouseButton(kCGMouseButtonLeft)
            ).takeUnretainedValue()
        
        let click1_up = CGEventCreateMouseEvent(
            nil, CGEventType(kCGEventLeftMouseUp),
            CGPointMake(x, y),
            CGMouseButton(kCGMouseButtonLeft)
            ).takeUnretainedValue()
        
        CGEventPost(CGEventTapLocation(kCGHIDEventTap), click1_down)
        CGEventPost(CGEventTapLocation(kCGHIDEventTap), click1_up)
    }


    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


    
    func clickAt(x: Int, y: Int) {
        
    }
}

