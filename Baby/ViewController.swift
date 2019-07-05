//
//  ViewController.swift
//  Baby
//
//  Created by James Tang on 4/7/2019.
//  Copyright © 2019 James Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        #if UIKITFORMAC
        Swift.print(">>>> UIKITFORMAC")
        #else
        Swift.print(">>>> iOS")
        #endif

//        #if targetEnvironment(UIKitForMac)
//        Swift.print("targetEnvironment UIKITFORMAC")
//        #else
//        Swift.print("targetEnvironment iOS")
//        #endif

//        if #available (iOS 13, UIKitForMac 10.15, *) {
//            // Fallback on earlier versions
//            printEnvironmentMac()
//        } else {
//            printEnvironment()
//        }
    }

//    func printEnvironment() {
//        Swift.print(">>>> iOS")
//    }
//
//    @available (iOS 13, UIKitForMac 10.15, *)
//    func printEnvironmentMac() {
//        Swift.print(">>>> UIKITFORMAC")
//        _ = self.view.window?.windowScene
//    }
}

