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

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let config = SEGAnalyticsConfiguration(writeKey: "YOUR_APP_ID_HERE")

        config?.trackApplicationLifecycleEvents = true
        config?.recordScreenViews = true
        config?.use(SEGGoogleAnalyticsIntegrationFactory.instance())
        SEGAnalytics.setup(with: config)
        
        SEGAnalytics.shared().group("Astronomer")
        SEGAnalytics.shared().screen("home")
        SEGAnalytics.shared().identify("aloisbarreras")
        SEGAnalytics.shared().alias("aloisbarreras-alias")
        
        SEGAnalytics.shared().track("Custom Analytics Events")
        SEGAnalytics.shared().flush()
        
        return true
    }
}
