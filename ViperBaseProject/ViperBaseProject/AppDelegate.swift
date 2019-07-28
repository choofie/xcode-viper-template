//
//  AppDelegate.swift
//  ViperBaseProject
//
//  Created by Mate Lorincz on 2019. 07. 28..
//  Copyright © 2019. MateLorincz. All rights reserved.
//


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var rootWireframe: Wireframe?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        prepareUserInterFace()
        return true
    }
}

// MARK: - Private Extension

private extension AppDelegate {

    func prepareUserInterFace() {

        if window == nil {
            window = UIWindow(frame: UIScreen.main.bounds)
        }

        displayLandingWireframe()
    }

    func displayLandingWireframe() {
        rootWireframe = MainWireframe()
        window?.rootViewController = rootWireframe?.viewController()
        window?.makeKeyAndVisible()
    }
}
