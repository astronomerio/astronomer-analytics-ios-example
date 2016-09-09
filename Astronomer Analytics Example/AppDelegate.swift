//
//  AppDelegate.swift
//  Astronomer Analytics Example
//
//  Created by Craig Barreras on 6/8/16.
//  Copyright © 2016 Astronomer. All rights reserved.
//

import UIKit
import Foundation
import AstronomerAnalytics
import Astronomer_GoogleAnalytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let config = SEGAnalyticsConfiguration(writeKey: "YOUR_APP_ID")

        config.trackApplicationLifecycleEvents = true
        config.recordScreenViews = true
        config.use(SEGGoogleAnalyticsIntegrationFactory.instance())
        SEGAnalytics.setupWithConfiguration(config)
        
        SEGAnalytics.sharedAnalytics().group("Astronomer")
        SEGAnalytics.sharedAnalytics().screen("home")
        SEGAnalytics.sharedAnalytics().identify("aloisbarreras")
        SEGAnalytics.sharedAnalytics().alias("aloisbarreras-alias")
        
        SEGAnalytics.sharedAnalytics().track("Custom Analytics Events")
        SEGAnalytics.sharedAnalytics().flush()
        
        return true
    }
}
